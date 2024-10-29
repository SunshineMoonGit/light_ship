import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/wallet/wallet_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class WalletNetworkUseCase {
  final WalletRepository repository;

  WalletNetworkUseCase({required this.repository});

  Future<Result<void>> add(String uid, OtherUserInfoEntity newData) async {
    return await repository.addNetwork(uid, newData);
  }

  Future<Result<List<OtherUserInfoEntity>>> getAll(String uid) async {
    return await repository.getAllNetwork(uid);
  }

  Future<Result<void>> update(String uid, OtherUserInfoEntity newData) async {
    return await repository.updateNetwork(uid, newData);
  }
}
