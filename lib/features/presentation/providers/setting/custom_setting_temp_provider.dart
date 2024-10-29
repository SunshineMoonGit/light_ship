import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_provider.dart';

class CustomSettingTempProviderNotifier extends AutoDisposeNotifier<CustomSettingEntity> {
  CustomSettingEntity get origin => ref.read(customSettingProvider);

  @override
  CustomSettingEntity build() {
    return origin;
  }

  void selectTheme(ThemeType type) {
    switch (type) {
      case ThemeType.light:
        state = state.copyWith(theme: ThemeType.light);
        return;
      case ThemeType.dark:
        state = state.copyWith(theme: ThemeType.dark);
        return;
    }
  }
}

final customSettingTempProvider = AutoDisposeNotifierProvider<CustomSettingTempProviderNotifier, CustomSettingEntity>(
    CustomSettingTempProviderNotifier.new);
