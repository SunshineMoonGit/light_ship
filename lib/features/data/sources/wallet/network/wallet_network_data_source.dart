import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class WalletNetworkDataSource {
  Future<Result<void>> add(String uid, OtherUserInfoModel newData);
  Future<Result<List<OtherUserInfoModel>>> getAll(String uid);
  Future<Result<void>> update(String uid, OtherUserInfoModel data);
}
