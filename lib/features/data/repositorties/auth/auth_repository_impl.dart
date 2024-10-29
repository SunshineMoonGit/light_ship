import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/features/data/sources/auth/local/auth_local_data_source.dart';
import 'package:light_ship/features/data/sources/auth/network/auth_network_data_source.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/domain/repositories/auth/auth_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource dataSourceLocal;
  final AuthNetworkDataSource dataSourceNetwork;

  AuthRepositoryImpl({
    required this.dataSourceLocal,
    required this.dataSourceNetwork,
  });

  // Network
  @override
  Future<Result<MyUserInfoEntity>> signInWithGoogle() async {
    final Result<MyUserInfoModel> result = await dataSourceNetwork.signInWithGoogle();
    return result.map((value) => value.toEntity());
  }

  @override
  Future<Result> updateNetwork(MyUserInfoEntity data) async {
    final Result result = await dataSourceNetwork.update(MyUserInfoModel.fromEntity(data));
    return result;
  }

  @override
  Future<Result<MyUserInfoEntity>> getNetwork(String uid) async {
    final Result<MyUserInfoModel> result = await dataSourceNetwork.get(uid);

    return result.map((value) => value.toEntity());
  }

  // local
  @override
  Result<MyUserInfoEntity> getLocal() {
    final Result<MyUserInfoModel> result = dataSourceLocal.get();
    return result.map((value) => value.toEntity());
  }

  @override
  void signOut() {
    dataSourceLocal.signOut();
  }

  @override
  Result updateLocal(MyUserInfoEntity data) {
    final Result result = dataSourceLocal.update(MyUserInfoModel.fromEntity(data));
    return result;
  }
}
