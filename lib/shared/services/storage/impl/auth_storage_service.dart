import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/config/app/const/app_path.dart';
import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class AuthStorageService {
  final Box _box;

  AuthStorageService(this._box);

  void update(MyUserInfoModel newData) {
    try {
      // 새로 갈아없기
      _box.put(AppPath.storageAuth, newData.toJson());
    } catch (e) {
      ssPrint(e.toString(), 'AuthStorage_update');
    }
  }

  MyUserInfoModel? get() {
    final Map<dynamic, dynamic>? localData = _box.get(AppPath.storageAuth);

    if (localData == null) {
      return const MyUserInfoModel();
    }
    final Map<String, dynamic> pData = HiveStorageService.convertDynamicMap(localData);

    return MyUserInfoModel.fromJson(pData);
  }

  Future<void> signOut() async {
    await _box.clear();
  }
}
