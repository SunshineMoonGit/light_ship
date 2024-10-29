import 'package:light_ship/features/data/models/setting/custom_setting_model.dart';
import 'package:light_ship/features/data/sources/setting/local/custom_setting_local_data_source.dart';
import 'package:light_ship/shared/services/result/result.dart';
import 'package:light_ship/shared/services/storage/impl/custom_setting_service.dart';

class CustomSettingLocalDataSourceImpl extends CustomSettingLocalDataSource {
  CustomSettingLocalDataSourceImpl(this._customStorage);

  final CustomSettingService _customStorage;

  @override
  Result<CustomSettingModel> get() {
    try {
      final CustomSettingModel result = _customStorage.get();
      return Result.success(result);
    } catch (e) {
      return Result.failure('custom setting get fail');
    }
  }

  @override
  Result<void> update(CustomSettingModel data) {
    try {
      _customStorage.update(data);

      return Result.success(null);
    } catch (e) {
      print(e);
      return Result.failure(e.toString());
    }
  }
}
