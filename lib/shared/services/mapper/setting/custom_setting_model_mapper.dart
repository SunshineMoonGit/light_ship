import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/features/data/models/setting/custom_setting_model.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';

class CustomSettingModelMapper {
  static Map<String, dynamic> toJson(CustomSettingModel data) {
    return {
      "theme": data.theme.toString().split('.').last,
      "language": data.language.toString().split('.').last,
      "notificationsEnabled": data.notificationsEnabled
    };
  }

  static CustomSettingModel fromJson(Map<String, dynamic> json) {
    return CustomSettingModel(
      theme: ThemeType.values.firstWhere(
        (e) => e.toString() == 'ThemeType.${json['theme']}',
        orElse: () => ThemeType.light,
      ),
      language: LanguageType.values.firstWhere(
        (e) => e.toString() == 'LanguageType.${json['language']}',
        orElse: () => LanguageType.en,
      ),
      notificationsEnabled: json['notificationsEnabled'] == true,
    );
  }

  static CustomSettingEntity toEntity(CustomSettingModel data) {
    return CustomSettingEntity(
      theme: data.theme,
      language: data.language,
      notificationsEnabled: data.notificationsEnabled,
    );
  }

  static CustomSettingModel fromEntity(CustomSettingEntity entity) {
    return CustomSettingModel(
      theme: entity.theme,
      language: entity.language,
      notificationsEnabled: entity.notificationsEnabled,
    );
  }
}
