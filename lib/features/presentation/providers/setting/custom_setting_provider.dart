import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/di/injector.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/domain/use_cases/setting/custom_local_use_case.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/services/result/result.dart';

class CustomSettingProviderNotifier extends Notifier<CustomSettingEntity> {
  CustomSettingLocalUseCase get _customLocalUseCase => ref.watch(customSettingLocalUseCaseProvider);

  @override
  CustomSettingEntity build() {
    return const CustomSettingEntity();
  }

  Future<void> init(String locale) async {
    if (state.language == LanguageType.none) {
      // locale을 받은 걸로 업데이트
    }
    // get
    final Result<CustomSettingEntity> result = _customLocalUseCase.get();

    await result.futureWhen(
      success: (value) async => state = value,
      failure: (e) async => ref.notify('CustomSetting init 실패'),
    );

    ssPrint('CustomSetting Init!!', 'CustomSettingProvider');
  }

  // 상태를 업데이트하는 메서드들을 여기에 추가할 수 있습니다.
  void update(CustomSettingEntity data) {
    final Result<void> result = _customLocalUseCase.update(data);

    result.when(
      success: (value) => state = data,
      failure: (e) => ref.notify('CustomSetting update 실패'),
    );
  }
}

final customSettingProvider =
    NotifierProvider<CustomSettingProviderNotifier, CustomSettingEntity>(CustomSettingProviderNotifier.new);
