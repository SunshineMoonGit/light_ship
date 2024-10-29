import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/shared/services/mapper/setting/custom_setting_model_mapper.dart';

part 'custom_setting_model.freezed.dart';
part 'custom_setting_model.g.dart';

@freezed
class CustomSettingModel with _$CustomSettingModel {
  const factory CustomSettingModel({
    @Default(ThemeType.light) ThemeType theme,
    @Default(LanguageType.none) LanguageType language,
    @Default(true) bool notificationsEnabled,
  }) = _CustomSettingModel;

  factory CustomSettingModel.fromJson(Map<String, dynamic> json) => _$CustomSettingModelFromJson(json);

  factory CustomSettingModel.fromEntity(CustomSettingEntity entity) => CustomSettingModelMapper.fromEntity(entity);

// Map<String, dynamic> toJson() => CustomSettingModelMapper.toJson(this);
}

extension CustomSettingModelX on CustomSettingModel {
  Map<String, dynamic> toJson() => CustomSettingModelMapper.toJson(this);

  CustomSettingEntity toEntity() => CustomSettingModelMapper.toEntity(this);
}
