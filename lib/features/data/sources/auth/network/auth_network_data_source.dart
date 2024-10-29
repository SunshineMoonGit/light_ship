import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class AuthNetworkDataSource {
  Future<Result<MyUserInfoModel>> signInWithGoogle();

  Future<Result> update(MyUserInfoModel data);
  Future<Result<MyUserInfoModel>> get(String uid);
}
