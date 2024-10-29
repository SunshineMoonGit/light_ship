import 'package:firebase_auth/firebase_auth.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/data/models/user_info/components/private_my_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';

class MyUserInfoModelMapper {
  static MyUserInfoModel fromUser(User user, LoginType type) {
    return MyUserInfoModel(
      publicInfo: PublicUserInfoModel(
        localUid: user.uid,
        name: user.displayName,
        email: user.email,
        profileImage: user.photoURL,
        phone: user.phoneNumber,
        lastUpdated: DateTime.now(),
      ),
      privateInfo: PrivateMyUserInfoModel(
        serverUid: user.uid,
        loginType: type,
        userType: UserType.normal,
        createdAt: DateTime.now(),
      ),
    );
  }

  static Map<String, dynamic> toJson(MyUserInfoModel data) {
    return {
      "publicInfo": data.publicInfo.toJson(),
      "privateInfo": data.privateInfo.toJson(),
    };
  }

  static MyUserInfoModel fromJson(Map<String, dynamic> json) {
    return MyUserInfoModel(
      publicInfo: PublicUserInfoModel.fromJson(json['publicInfo'] as Map<String, dynamic>),
      privateInfo: PrivateMyUserInfoModel.fromJson(json['privateInfo'] as Map<String, dynamic>),
    );
  }

  static MyUserInfoEntity toEntity(MyUserInfoModel data) {
    return MyUserInfoEntity(
      publicInfo: data.publicInfo.toEntity(),
      privateInfo: data.privateInfo.toEntity(),
    );
  }

  static MyUserInfoModel fromEntity(MyUserInfoEntity entity) {
    return MyUserInfoModel(
      publicInfo: PublicUserInfoModel.fromEntity(entity.publicInfo),
      privateInfo: PrivateMyUserInfoModel.fromEntity(entity.privateInfo),
    );
  }
}
