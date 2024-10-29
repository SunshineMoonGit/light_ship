import 'package:light_ship/features/data/models/setting/key_setting_model.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';

class KeySettingModelMapper {
  static Map<String, dynamic> toJson(KeySettingModel data) {
    return {
      "uid": data.uid,
    };
  }

  static KeySettingModel fromJson(Map<String, dynamic> json) {
    return KeySettingModel(
      uid: json['uid'],
    );
  }

  static KeySettingEntity toEntity(KeySettingModel data) {
    return KeySettingEntity(
      uid: data.uid,
    );
  }

  static KeySettingModel fromEntity(KeySettingEntity entity) {
    return KeySettingModel(
      uid: entity.uid,
    );
  }
}
