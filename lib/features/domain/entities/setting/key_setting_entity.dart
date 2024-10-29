import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/setting/key_setting_entity_mapper.dart';

part 'key_setting_entity.freezed.dart';

@freezed
class KeySettingEntity with _$KeySettingEntity {
  const KeySettingEntity._();

  const factory KeySettingEntity({
     String? uid,
  }) = _KeySettingEntity;

  factory KeySettingEntity.fromMyUserInfoEntity(MyUserInfoEntity data) =>
      KeySettingEntityMapper.fromMyUserInfoEntity(data);
}
