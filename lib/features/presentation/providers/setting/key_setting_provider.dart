import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/di/injector.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/features/domain/use_cases/setting/key_local_use_case.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/services/result/result.dart';

class KeySettingProviderNotifier extends Notifier<KeySettingEntity> {
  KeySettingLocalUseCase get _keyLocalUseCase => ref.watch(keySettingLocalUseCaseProvider);

  @override
  KeySettingEntity build() {
    return const KeySettingEntity();
  }

  Future<void> init() async {
    // 로컬 데이터 불러오기
    final Result<KeySettingEntity> result = _keyLocalUseCase.get();

    await result.futureWhen(
      success: (value) async => state = value,
      failure: (error) async {},
    );

    // uid 있음

    // uid 없음

    // 적용
    print(state);
    ssPrint('KeySetting Init!!', 'KeySettingProvider');
  }

  void update(KeySettingEntity data) {
    _keyLocalUseCase.update(data);
    state = data;
  }

  void signOut() {
    update(const KeySettingEntity());
  }
}

final keySettingProvider =
    NotifierProvider<KeySettingProviderNotifier, KeySettingEntity>(KeySettingProviderNotifier.new);
