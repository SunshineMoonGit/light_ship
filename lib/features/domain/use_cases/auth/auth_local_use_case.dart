import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/auth/auth_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class AuthLocalUseCase {
  final AuthRepository repository;

  AuthLocalUseCase({required this.repository});

  Result<MyUserInfoEntity> get() {
    return repository.getLocal();
  }

  void signOut() {
    repository.signOut();
  }

  Result<void> update(MyUserInfoEntity updateData) {
    return repository.updateLocal(updateData);
  }
}
