import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/features/data/sources/auth/network/auth_network_data_source.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/services/result/result.dart';

class AuthNetworkDataSourceImpl extends AuthNetworkDataSource {
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  AuthNetworkDataSourceImpl();

  @override
  Future<Result> update(MyUserInfoModel data) async {
    try {
      // update -> copyWith 필수

      // 업데이트
      await _db.collection("user").doc(data.publicInfo.localUid).set(data.toJson());

      return Result.success('정보 업데이트 성공.');
    } catch (e) {
      ssPrint(e.toString(), 'AuthDataSourceNetworkImpl', 'update');
      return Result.failure('정보 업데이트 실패.');
    }
  }

  @override
  Future<Result<MyUserInfoModel>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential res = await FirebaseAuth.instance.signInWithCredential(credential);

      final String uid = res.user!.uid;

      final Result<MyUserInfoModel> getUser = await _getUser(uid, res, LoginType.google);

      return getUser;
    } catch (e) {
      return Result.failure('Google 로그인 실패: ${e.toString()}');
    }
  }

  @override
  Future<Result<MyUserInfoModel>> get(String uid) async {
    try {
      final docSnapshot = await _db.collection("user").doc(uid).get();

      final MyUserInfoModel result = MyUserInfoModel.fromJson(docSnapshot.data()!);

      return Result.success(result);
    } catch (e) {
      return Result.failure("Get $uid Data Fail");
    }
  }

  Future<Result<MyUserInfoModel>> _getUser(String uid, UserCredential res, LoginType type) async {
    try {
      // 기존 사용자 데이터 확인
      final DocumentSnapshot<Map<String, dynamic>> docSnapshot = await _path(uid).get();

      late MyUserInfoModel userData;

      if (docSnapshot.exists) {
        // 기존 데이터가 있는 경우
        userData = MyUserInfoModel.fromJson(docSnapshot.data()!);
      } else {
        // 새로운 사용자인 경우
        userData = MyUserInfoModel.fromUser(res.user!, type);
        print(1);
        print(userData.toJson().runtimeType);

        await _path(uid).set(userData.toJson());

        print(1);
      }

      return Result.success(userData);
    } catch (e) {
      return Result.failure("데이터 불러오기 실패: ${e.toString()}");
    }
  }

  DocumentReference<Map<String, dynamic>> _path(uid) => _db.collection("user").doc(uid);
}
