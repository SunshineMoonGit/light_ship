import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/config/app/const/app_path.dart';
import 'package:light_ship/features/data/models/setting/key_setting_model.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class KeySettingService {
  final Box _box;

  KeySettingService(this._box);

  void update(KeySettingModel settingData) {
    try {
      _box.put(AppPath.storageKey, settingData.toJson());
    } catch (e) {
      print(e);
    }
  }

  void delete() {
    _box.delete(AppPath.storageKey);
  }

  KeySettingModel get() {
    Map<dynamic, dynamic>? localData = _box.get(AppPath.storageKey);
    if (localData == null) {
      return const KeySettingModel();
    }

    final Map<String, dynamic> pData = HiveStorageService.convertDynamicMap(localData);

    return KeySettingModel.fromJson(pData);
  }

  // Future<void> set(KeySettingModel data) async {
  //   await _box.put(AppPath.storageKey, data);
  // }

  // Future<void> init() async {
  //   try {
  //     await _box.put(AppPath.storageKey, const KeySettingModel());
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
