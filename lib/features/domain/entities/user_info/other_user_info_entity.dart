import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_other_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';

part 'other_user_info_entity.freezed.dart';

@freezed
class OtherUserInfoEntity with _$OtherUserInfoEntity {
  const OtherUserInfoEntity._();

  const factory OtherUserInfoEntity({
    @Default(PublicUserInfoEntity()) PublicUserInfoEntity publicInfo,
    @Default(PrivateOtherUserInfoEntity()) PrivateOtherUserInfoEntity privateInfo,
  }) = _OtherUserInfoEntity;

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
  String? get localUid => publicInfo.localUid;
  // String get createdAt => publicInfo.createdAt;

  // PrivateUserInfoEntity의 필드에 쉽게 접근할 수 있도록 getter 추가
  String? get serverUid => privateInfo.serverUid;
  bool get isFavorite => privateInfo.isFavorite;
  // LoginType get loginType => privateInfo.loginType;
  // String get lastLoginAt => privateInfo.lastLoginAt;

  static List<OtherUserInfoEntity> addToList(List<OtherUserInfoEntity> list, OtherUserInfoEntity newItem) {
    return [...list, newItem];
  }

  OtherUserInfoEntity onFavorite() {
    return copyWith.privateInfo(isFavorite: !isFavorite);
  }
}
