import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';

part 'custom_setting_entity.freezed.dart';

@freezed
class CustomSettingEntity with _$CustomSettingEntity {
  const factory CustomSettingEntity({
    @Default(ThemeType.light) ThemeType theme,
    @Default(LanguageType.none) LanguageType language,
    @Default(true) bool notificationsEnabled,
  }) = _CustomSettingEntity;
}
