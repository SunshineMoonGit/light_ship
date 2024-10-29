import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class AuthRepository {
  // network
  Future<Result<MyUserInfoEntity>> signInWithGoogle();

  Future<Result<MyUserInfoEntity>> getNetwork(String uid);

  Future<Result> updateNetwork(MyUserInfoEntity data);

  // local
  Result<MyUserInfoEntity> getLocal();

  void signOut();

  Result updateLocal(MyUserInfoEntity data);
}
