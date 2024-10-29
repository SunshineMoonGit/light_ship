import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/config/app/const/app_path.dart';
import 'package:light_ship/shared/services/storage/impl/auth_storage_service.dart';
import 'package:light_ship/shared/services/storage/impl/custom_setting_service.dart';
import 'package:light_ship/shared/services/storage/impl/key_setting_service.dart';
import 'package:light_ship/shared/services/storage/impl/wallet_storage_service.dart';

abstract class StorageService {
  KeySettingService get key;
  CustomSettingService get custom;
  AuthStorageService get auth;
  WalletStorageService get wallet;

  static Future<void> initialize() async {
    await Hive.initFlutter();

    // _registerAdapters();

    await Future.wait([
      Hive.openBox(AppPath.storageAuth),
      Hive.openBox(AppPath.storageFollowings),
      Hive.openBox(AppPath.storageKey),
      Hive.openBox(AppPath.storageCustom),
    ]);
  }

  // static void _registerAdapters() {
  //   Hive.registerAdapter(CustomSettingModelAdapter());
  //   Hive.registerAdapter(KeySettingModelAdapter());
  //   Hive.registerAdapter(PublicUserInfoModelAdapter());
  //   Hive.registerAdapter(PrivateUserInfoModelAdapter());
  //   Hive.registerAdapter(MyUserInfoModelAdapter());

  //   // 필요한 경우 여기에 더 많은 어댑터를 등록할 수 있습니다.
  // }
}

// Hive를 사용한 구현
class HiveStorageService implements StorageService {
  @override
  final KeySettingService key;
  @override
  final CustomSettingService custom;
  @override
  final AuthStorageService auth;
  @override
  final WalletStorageService wallet;

  HiveStorageService({
    required Box authBox,
    required Box walletBox,
    required Box keySettingBox,
    required Box customSettingBox,
  })  : auth = AuthStorageService(authBox),
        wallet = WalletStorageService(walletBox),
        key = KeySettingService(keySettingBox),
        custom = CustomSettingService(customSettingBox);

  static Map<String, dynamic> convertDynamicMap(Map<dynamic, dynamic> dynamicMap) {
    return dynamicMap.map((key, value) => MapEntry(key.toString(), value));
  }
}
