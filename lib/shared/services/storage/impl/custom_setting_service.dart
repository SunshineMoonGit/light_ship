import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/config/app/const/app_path.dart';
import 'package:light_ship/features/data/models/setting/custom_setting_model.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class CustomSettingService {
  final Box _box;

  CustomSettingService(this._box);

  void update(CustomSettingModel settingData) {
    _box.put(AppPath.storageCustom, settingData.toJson());
  }

  CustomSettingModel get() {
    final Map<dynamic, dynamic>? localData = _box.get(AppPath.storageCustom);

    if (localData == null) {
      return const CustomSettingModel();
    }

    final Map<String, dynamic> pData = HiveStorageService.convertDynamicMap(localData);

    return CustomSettingModel.fromJson(pData);
  }

  void set(CustomSettingModel data) {
    _box.put(AppPath.storageCustom, data);
  }
}
