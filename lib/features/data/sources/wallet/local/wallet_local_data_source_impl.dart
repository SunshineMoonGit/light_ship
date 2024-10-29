import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/features/data/sources/wallet/local/wallet_local_data_source.dart';
import 'package:light_ship/shared/services/result/result.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

class WalletLocalDataSourceImpl extends WalletLocalDataSource {
  WalletLocalDataSourceImpl(this._storageService);

  final HiveStorageService _storageService;

  @override
  Result<void> update(List<OtherUserInfoModel> data) {
    try {
      _storageService.wallet.update(data);
      return Result.success(null);
    } catch (e) {
      return Result.failure('Storage Update Failed');
    }
  }

  @override
  Result<List<OtherUserInfoModel>> getAll() {
    try {
      final List<OtherUserInfoModel> result = _storageService.wallet.getAll();

      return Result.success(result);
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
