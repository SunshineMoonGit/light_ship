import 'package:firebase_auth/firebase_auth.dart';
import 'package:light_ship/features/data/models/user_info/components/private_other_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/other_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';

class OtherUserInfoModelMapper {
  static OtherUserInfoModel fromUser(User user) {
    return OtherUserInfoModel(
      publicInfo: PublicUserInfoModel(
        localUid: user.uid,
        name: user.displayName ?? '',
        email: user.email ?? '',
        profileImage: user.photoURL ?? '',
        // createdAt: DateTime.now().toIso8601String(),
        phone: user.phoneNumber ?? '',
      ),
      privateInfo: const PrivateOtherUserInfoModel(),
    );
  }

  static Map<String, dynamic> toJson(OtherUserInfoModel data) {
    return {
      "publicInfo": data.publicInfo.toJson(),
      "privateInfo": data.privateInfo.toJson(),
    };
  }

  static OtherUserInfoModel fromJson(Map<String, dynamic> json) {
    return OtherUserInfoModel(
      publicInfo: PublicUserInfoModel.fromJson(json['publicInfo'] as Map<String, dynamic>),
      privateInfo: PrivateOtherUserInfoModel.fromJson(json['privateInfo'] as Map<String, dynamic>),
    );
  }

  static OtherUserInfoEntity toEntity(OtherUserInfoModel data) {
    return OtherUserInfoEntity(
      publicInfo: data.publicInfo.toEntity(),
      privateInfo: data.privateInfo.toEntity(),
    );
  }

  static OtherUserInfoModel fromEntity(OtherUserInfoEntity entity) {
    return OtherUserInfoModel(
      publicInfo: PublicUserInfoModel.fromEntity(entity.publicInfo),
      privateInfo: PrivateOtherUserInfoModel.fromEntity(entity.privateInfo),
    );
  }
}
