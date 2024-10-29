import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/shared/services/result/result.dart';

abstract class WalletLocalDataSource {
  Result<void> update(List<OtherUserInfoModel> data);
  Result<List<OtherUserInfoModel>> getAll();
}
