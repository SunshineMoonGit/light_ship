import 'package:light_ship/features/data/models/setting/key_setting_model.dart';
import 'package:light_ship/features/data/sources/setting/local/key_setting_local_data_source.dart';
import 'package:light_ship/shared/services/result/result.dart';
import 'package:light_ship/shared/services/storage/impl/key_setting_service.dart';

class KeySettingLocalDataSourceImpl extends KeySettingLocalDataSource {
  KeySettingLocalDataSourceImpl(this._keyStorage);

  final KeySettingService _keyStorage;

  @override
  Result<void> update(KeySettingModel data) {
    try {
      _keyStorage.update(data);

      return Result.success(null);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }

  @override
  Result<KeySettingModel> get() {
    try {
      final KeySettingModel result = _keyStorage.get();

      return Result.success(result);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
