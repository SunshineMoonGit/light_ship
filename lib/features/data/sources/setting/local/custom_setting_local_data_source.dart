import 'package:light_ship/features/data/models/setting/custom_setting_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class CustomSettingLocalDataSource {
  Result<CustomSettingModel> get();
  Result<void> update(CustomSettingModel data);
}
