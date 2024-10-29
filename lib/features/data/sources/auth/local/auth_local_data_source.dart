import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class AuthLocalDataSource {
  // AuthState> check();
  Result<MyUserInfoModel> get();

  Result update(MyUserInfoModel data);

  Result signOut();
}
