import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/di/injector.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/domain/use_cases/wallet/wallet_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/wallet/wallet_network_use_case.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/result/result.dart';

class WalletProviderNotifier extends Notifier<List<OtherUserInfoEntity>> {
  WalletLocalUseCase get _localUseCase => ref.watch(walletLocalUseCaseProvider);
  WalletNetworkUseCase get _networkUseCase => ref.watch(walletNetworkUseCaseProvider);
  String? get _myUid => ref.watch(myUserInfoProvider).uid;

  @override
  List<OtherUserInfoEntity> build() {
    return [];
  }

  Future<void> init() async {
    if (_myUid.isNull()) {
      return;
    }

    final Result<List<OtherUserInfoEntity>> networkData = await _networkUseCase.getAll(_myUid!);

    await networkData.futureWhen(
      success: (value) async => _updateLocal(value),
      failure: (error) async => Future.value(),
    );
  }

  Future<void> add(OtherUserInfoEntity data) async {
    if (_myUid.isNull()) {
      return;
    }
    // result 로 받아와서
    final Result<void> result = await _networkUseCase.add(_myUid!, data);

    final List<OtherUserInfoEntity> pState = OtherUserInfoEntity.addToList(state, data);

    result.when(
      success: (value) => _updateLocal(pState),
      failure: (e) => ref.notify('WalletAdd Fail'),
    );
  }

  Future<void> delete(OtherUserInfoEntity data) async {
    // await _networkUseCase.delete(_myUid, data);
    // final List<OtherUserInfoEntity> result = await _localUseCase.delete(data); // 데이터 받아와

    // state = result;
  }

  // firebase -> uid로 찾기
  // provider는 전체 변경
  // 따라서, data만 전달
  Future<void> update(OtherUserInfoEntity data) async {
    if (_myUid.isNull()) {
      return;
    }

    // 네트워크 edit (데이터 전달)
    await _networkUseCase.update(_myUid!, data);

    // 로컬 edit (update)
    await _editLocal(data);
  }

  void getAll() async {
    final Result<List<OtherUserInfoEntity>> result = _localUseCase.getAll();

    result.when(
      success: (value) => state = value,
      failure: (error) => ref.notify(error),
    );
  }

  Future<void> _editLocal(OtherUserInfoEntity data) async {
    final index = state.indexWhere((item) => item.localUid == data.localUid);

    if (index != -1) {
      // 일치하는 항목이 있으면 해당 항목을 새 데이터로 교체합니다.
      final updatedList = List<OtherUserInfoEntity>.from(state);
      updatedList[index] = data;

      print(updatedList);

      await _updateLocal(updatedList);
    }
  }

  Future<void> _updateLocal(List<OtherUserInfoEntity> data) async {
    final Result<void> result = _localUseCase.update(data);

    await result.futureWhen(
      success: (value) async => state = data,
      failure: (error) async => print('Storage Update Failed'),
    );
  }
}

final walletProvider = NotifierProvider<WalletProviderNotifier, List<OtherUserInfoEntity>>(WalletProviderNotifier.new);
