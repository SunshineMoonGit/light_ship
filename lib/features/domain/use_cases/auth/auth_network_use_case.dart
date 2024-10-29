import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/auth/auth_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class AuthNetworkUseCase {
  final AuthRepository repository;

  AuthNetworkUseCase({required this.repository});

  Future<Result<MyUserInfoEntity>> signIn(LoginType type) async {
    switch (type) {
      case LoginType.google:
        return await repository.signInWithGoogle();
      case LoginType.apple:
      case LoginType.none:
    }
    // ! 수정 필요
    return await repository.signInWithGoogle();
  }

  Future<Result> update(MyUserInfoEntity updateData) async {
    return await repository.updateNetwork(updateData);
  }

  Future<Result<MyUserInfoEntity>> get(String uid) async {
    return await repository.getNetwork(uid);
  }
}
