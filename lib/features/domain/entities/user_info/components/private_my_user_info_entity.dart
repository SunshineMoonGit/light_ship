import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/data/models/user_info/components/private_my_user_info_model.dart';

part 'private_my_user_info_entity.freezed.dart';

@freezed
class PrivateMyUserInfoEntity with _$PrivateMyUserInfoEntity {
  const PrivateMyUserInfoEntity._();

  const factory PrivateMyUserInfoEntity({
    String? serverUid,
    @Default(UserType.normal) UserType userType,
    @Default(LoginType.none) LoginType loginType,
    DateTime? createdAt,
  }) = _PrivateMyUserInfoEntity;

  // Model로 변환하는 메서드
  PrivateMyUserInfoModel toModel() {
    return PrivateMyUserInfoModel(
      userType: userType,
      loginType: loginType,
    );
  }

  // Model에서 Entity로 변환하는 팩토리 메서드
  factory PrivateMyUserInfoEntity.fromModel(PrivateMyUserInfoModel model) {
    return PrivateMyUserInfoEntity(
      userType: model.userType,
      loginType: model.loginType,
    );
  }
}
