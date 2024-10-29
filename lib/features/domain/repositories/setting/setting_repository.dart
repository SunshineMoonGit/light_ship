import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class SettingRepository {
  // Custom Setting
  Result<CustomSettingEntity> getCustom();
  Result<void> updateCustom(CustomSettingEntity data);

  // Key Setting
  Result<KeySettingEntity> getKey();
  Result<void> updateKey(KeySettingEntity data);
}
