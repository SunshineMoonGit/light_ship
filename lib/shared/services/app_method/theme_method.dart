import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_provider.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_temp_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';

class CustomSettingMethod {
  final WidgetRef ref;

  CustomSettingMethod(this.ref) {
    settings = ref.watch(customSettingProvider);
    settingsTemp = ref.watch(customSettingTempProvider);
  }

  late CustomSettingEntity settings;
  late CustomSettingEntity settingsTemp;

  void update() {
    ref.customSetting.update(settingsTemp);
  }

  void tempTheme(ThemeType type) {
    ref.customSettingTemp.selectTheme(type);
  }

  // void changeTheme(ThemeType theme) async {
  //   await ref.read(customSettingProvider.notifier).update(settings.copyWith(theme: theme));
  // }

  // void changeLanguage(LanguageType language) async {
  //   await ref.read(customSettingProvider.notifier).update(settings.copyWith(language: language));
  // }
}
