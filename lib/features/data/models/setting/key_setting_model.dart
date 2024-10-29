import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/shared/services/mapper/setting/key_setting_model_mapper.dart';

part 'key_setting_model.freezed.dart';
part 'key_setting_model.g.dart';

@freezed
class KeySettingModel with _$KeySettingModel {
  const factory KeySettingModel({
    String? uid,
  }) = _KeySettingModel;

  factory KeySettingModel.fromJson(Map<String, dynamic> json) => _$KeySettingModelFromJson(json);

  factory KeySettingModel.fromEntity(KeySettingEntity entity) => KeySettingModelMapper.fromEntity(entity);

  // @override
  // Map<String, dynamic> toJson() => KeySettingModelMapper.toJson(this);
}

extension KeySettingModelX on KeySettingModel {
  Map<String, dynamic> toJson() => KeySettingModelMapper.toJson(this);

  KeySettingEntity toEntity() => KeySettingModelMapper.toEntity(this);
}
