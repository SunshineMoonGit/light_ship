import 'package:light_ship/features/data/models/setting/key_setting_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class KeySettingLocalDataSource {
  Result<void> update(KeySettingModel data);

  Result<KeySettingModel> get();
}
