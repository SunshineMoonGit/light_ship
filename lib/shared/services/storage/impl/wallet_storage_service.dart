import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class WalletStorageService {
  WalletStorageService(this._box);

  final Box _box;
  final String _key = 'following';

  // 로컬에 저장된 데이터 가져오기
  List<OtherUserInfoModel> getAll() {
    try {
      final data = _box.get(_key);
      if (data == null) return [];

      return data.map((item) => OtherUserInfoModel.fromJson(HiveStorageService.convertDynamicMap(item))).toList();
    } catch (e) {
      print('Failed to get data from Hive: $e');
      return [];
    }
  }

  Future<void> update(List<OtherUserInfoModel> data) async {
    try {
      final List<Map<String, dynamic>> jsonList = data.map((e) => e.toJson()).toList();
      await _box.put(_key, jsonList);
    } catch (e) {
      print('Failed to update data in Hive: $e');
    }
  }
}
