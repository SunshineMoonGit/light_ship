import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class WalletRepository {
  // network
  // Future<Result<List<OtherUserInfoEntity>>> update(List<OtherUserInfoEntity> followings);
  Future<Result<void>> addNetwork(String uid, OtherUserInfoEntity data);
  Future<Result<List<OtherUserInfoEntity>>> getAllNetwork(String uid);
  Future<Result<void>> updateNetwork(String uid, OtherUserInfoEntity data);

  // local
  Result<List<OtherUserInfoEntity>> getAllLocal();
  Result<void> updateLocal(List<OtherUserInfoEntity> data);
}
