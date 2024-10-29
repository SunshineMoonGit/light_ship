import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';

class KeySettingEntityMapper {
  static KeySettingEntity fromMyUserInfoEntity(MyUserInfoEntity data) {
    return KeySettingEntity(
      uid: data.uid,
    );
  }
}
