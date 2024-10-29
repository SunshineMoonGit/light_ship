import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/features/data/sources/wallet/local/wallet_local_data_source.dart';
import 'package:light_ship/features/data/sources/wallet/network/wallet_network_data_source.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/wallet/wallet_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class WalletRepositoryImpl extends WalletRepository {
  final WalletLocalDataSource dataSourceLocal;
  final WalletNetworkDataSource dataSourceNetwork;

  WalletRepositoryImpl({
    required this.dataSourceLocal,
    required this.dataSourceNetwork,
  });

  @override
  Future<Result<void>> addNetwork(String uid, OtherUserInfoEntity data) async {
    return await dataSourceNetwork.add(uid, OtherUserInfoModel.fromEntity(data));
  }

  @override
  Future<Result<List<OtherUserInfoEntity>>> getAllNetwork(String uid) async {
    final Result<List<OtherUserInfoModel>> result = await dataSourceNetwork.getAll(uid);

    return result.map((value) => value.map((e) => e.toEntity()).toList());
  }

  @override
  Future<Result<void>> updateNetwork(String uid, OtherUserInfoEntity data) async {
    return await dataSourceNetwork.update(uid, OtherUserInfoModel.fromEntity(data));
  }

  @override
  Result<void> updateLocal(List<OtherUserInfoEntity> data) {
    return dataSourceLocal.update(data.map((e) => OtherUserInfoModel.fromEntity(e)).toList());
  }

  @override
  Result<List<OtherUserInfoEntity>> getAllLocal() {
    final Result<List<OtherUserInfoModel>> result = dataSourceLocal.getAll();

    return result.map((value) => value.map((e) => e.toEntity()).toList());
  }
}
