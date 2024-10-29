// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomSettingModelImpl _$$CustomSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomSettingModelImpl(
      theme: $enumDecodeNullable(_$ThemeTypeEnumMap, json['theme']) ??
          ThemeType.light,
      language: $enumDecodeNullable(_$LanguageTypeEnumMap, json['language']) ??
          LanguageType.none,
      notificationsEnabled: json['notificationsEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$CustomSettingModelImplToJson(
        _$CustomSettingModelImpl instance) =>
    <String, dynamic>{
      'theme': _$ThemeTypeEnumMap[instance.theme]!,
      'language': _$LanguageTypeEnumMap[instance.language]!,
      'notificationsEnabled': instance.notificationsEnabled,
    };

const _$ThemeTypeEnumMap = {
  ThemeType.light: 'light',
  ThemeType.dark: 'dark',
};

const _$LanguageTypeEnumMap = {
  LanguageType.none: 'none',
  LanguageType.en: 'en',
  LanguageType.ko: 'ko',
  LanguageType.jp: 'jp',
};
