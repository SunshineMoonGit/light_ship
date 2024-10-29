import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:light_ship/config/app/enums/ui_enums.dart';
import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/features/data/sources/wallet/network/wallet_network_data_source.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/result/result.dart';

class WalletNetworkDataSourceImpl extends WalletNetworkDataSource {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final ImageControllerManager _imageService = ImageControllerManager();

  @override
  Future<Result<void>> add(String uid, OtherUserInfoModel newData) async {
    try {
      final String pCardImage =
          await _imageService.processAndUploadImage(uid, newData.publicInfo, ImageType.card) ?? '';

      final OtherUserInfoModel pData = newData.copyWith.publicInfo(cardImage: pCardImage);

      await _path(uid).doc(newData.publicInfo.localUid).set(pData.toJson());

      return Result.success(null);
    } catch (e) {
      return Result.failure('Failed to add data: ${e.toString()}');
    }
  }

  @override
  Future<Result<List<OtherUserInfoModel>>> getAll(String uid) async {
    try {
      // Get docs from collection reference
      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await _path(uid).get();

      // Get data from docs and convert map to List
      final List<OtherUserInfoModel> allData =
          querySnapshot.docs.map((doc) => OtherUserInfoModel.fromJson(doc.data())).toList();

      return Result.success(allData);
    } catch (e) {
      return Result.failure('Failed to get all data: ${e.toString()}');
    }
  }

  CollectionReference<Map<String, dynamic>> _path(String uid) {
    return _db.collection("wallet").doc(uid).collection("following");
  }

  @override
  Future<Result<void>> update(String uid, OtherUserInfoModel data) async {
    try {
      // uid에 해당하는 문서 참조를 가져옵니다.
      final docRef = _path(uid).doc(data.publicInfo.localUid);

      // 문서가 존재하는지 확인합니다.
      final docSnapshot = await docRef.get();
      if (!docSnapshot.exists) {
        return Result.failure('업데이트할 문서를 찾을 수 없습니다.');
      }

      // 문서를 업데이트합니다.
      await docRef.update(data.toJson());

      return Result.success(null);
    } catch (e) {
      print('Error updating document: $e');
      return Result.failure('문서 업데이트 실패: ${e.toString()}');
    }
  }
}
