import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/di/injector.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/domain/use_cases/auth/auth_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/auth/auth_network_use_case.dart';
import 'package:light_ship/features/presentation/providers/setting/key_setting_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/services/result/result.dart';

class MyUserInfoProviderNotifier extends Notifier<MyUserInfoEntity> {
  AuthLocalUseCase get _authLocalUseCase => ref.read(authLocalUseCaseProvider);
  AuthNetworkUseCase get _authNetworkUseCase => ref.read(authNetworkUseCaseProvider);

  String? get _myUid => ref.read(keySettingProvider).uid;

  @override
  MyUserInfoEntity build() {
    return const MyUserInfoEntity();
  }

  // 맨 처음 실행 되는 함수
  Future<void> init() async {
    if (_myUid.isNull()) {
      return;
    }

    final Result<MyUserInfoEntity> networkData = await _authNetworkUseCase.get(_myUid!);

    await networkData.futureWhen(
      success: (value) async => _updateLocal(value),
      failure: (error) async => print('network myinfo fail'),
    );

    print(state);
    ssPrint('MyUserInfo Init!!', 'MyUserInfoProvider');
  }

  Future<void> update(MyUserInfoEntity newData) async {
    //! firebase에 저장
    final Result networkResult = await _authNetworkUseCase.update(newData);

    await networkResult.futureWhen(
      success: (value) async => await _updateLocal(newData),
      failure: (error) async => ref.notify(error),
    );
  }

  Future<MyUserInfoEntity> signIn(LoginType type) async {
    final Result<MyUserInfoEntity> result = await _authNetworkUseCase.signIn(type);

    result.when(
      success: (value) => state = value,
      failure: (error) => ref.notify(error),
    );

    return state;
  }

  Future<void> signOut() async {
    // state 초기화
    state = const MyUserInfoEntity();
  }

  // update local + set State
  Future<void> _updateLocal(MyUserInfoEntity updateData) async {
    final Result<void> result = _authLocalUseCase.update(updateData);
    print('MyUserInfoEntity Update Start');

    await result.futureWhen(
      success: (value) async {
        state = updateData;
        ssPrint(state, '_updateLocal');
      },
      failure: (error) async => print('_updateLocal 실패'),
    );
  }
}

final myUserInfoProvider = NotifierProvider<MyUserInfoProviderNotifier, MyUserInfoEntity>(() {
  return MyUserInfoProviderNotifier();
});
