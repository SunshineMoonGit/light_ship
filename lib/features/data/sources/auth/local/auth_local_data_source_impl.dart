import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/features/data/sources/auth/local/auth_local_data_source.dart';
import 'package:light_ship/shared/services/result/result.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  AuthLocalDataSourceImpl(this._storageService);

  final HiveStorageService _storageService;

  @override
  Result<MyUserInfoModel> get() {
    try {
      MyUserInfoModel? storage = _storageService.auth.get();

      if (storage == null) {
        return Result.failure("로그인 해야함");
      }

      return Result.success(storage);
    } catch (e) {
      return Result.failure("로그인 해야함");
    }
  }

  @override
  Result update(MyUserInfoModel data) {
    try {
      _storageService.auth.update(data);
      return Result.success('로컬 데이터 저장 성공.');
    } catch (e) {
      return Result.failure('로컬 데이터 저장 실패.');
    }
  }

  @override
  Result signOut() {
    try {
      _storageService.auth.signOut();
      return Result.success('로그아웃 성공.');
    } catch (e) {
      return Result.failure('로그아웃 실패.');
    }
  }
}
