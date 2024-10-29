import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/wallet/wallet_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class WalletLocalUseCase {
  final WalletRepository repository;

  WalletLocalUseCase({required this.repository});

  Result<List<OtherUserInfoEntity>> getAll() {
    return repository.getAllLocal();
  }

  Result<void> update(List<OtherUserInfoEntity> data) {
    return repository.updateLocal(data);
  }
}
