import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_my_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/services/mapper/user_info/main/my_user_info_entity_mapper.dart';

part 'my_user_info_entity.freezed.dart';

@freezed
class MyUserInfoEntity with _$MyUserInfoEntity {
  const MyUserInfoEntity._();

  const factory MyUserInfoEntity({
    @Default(PublicUserInfoEntity()) PublicUserInfoEntity publicInfo,
    @Default(PrivateMyUserInfoEntity()) PrivateMyUserInfoEntity privateInfo,
  }) = _MyUserInfoEntity;

  // PublicUserInfoEntity의 필드에 쉽게 접근할 수 있도록 getter 추가
  String? get uid => publicInfo.localUid;
  String? get name => publicInfo.name;
  String? get profileImage => publicInfo.profileImage;
  String? get cardImage => publicInfo.cardImage;
  String? get email => publicInfo.email;
  String? get team => publicInfo.team;
  String? get company => publicInfo.company;
  String? get phone => publicInfo.phone;
  String? get fax => publicInfo.fax;
  DateTime? get lastUpdated => publicInfo.lastUpdated;
  // String get lastUpdate => publicInfo.lastUpdate;
  // String get createdAt => publicInfo.createdAt;

  String? get serverUid => privateInfo.serverUid;
  // PrivateUserInfoEntity의 필드에 쉽게 접근할 수 있도록 getter 추가
  UserType get userType => privateInfo.userType;
  LoginType get loginType => privateInfo.loginType;
  // String get lastLoginAt => privateInfo.lastLoginAt;

  MyUserInfoEntity fromController(String? imagePath, TextControllerManager manager) {
    return MyUserInfoEntityMapper.fromController(this, imagePath, manager);
  }
}

extension MyUserInfoEntityExtension on MyUserInfoEntity {
  bool checkDetail() {
    return publicInfo.detailInfo.any((e) => e.value == null);
    // return true;
  }
}
