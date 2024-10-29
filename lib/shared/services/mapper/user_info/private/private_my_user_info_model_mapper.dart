import 'package:light_ship/features/data/models/user_info/components/private_my_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_my_user_info_entity.dart';

class PrivateMyUserInfoModelMapper {
  static PrivateMyUserInfoEntity toEntity(PrivateMyUserInfoModel data) {
    return PrivateMyUserInfoEntity(
      userType: data.userType,
      loginType: data.loginType,
    );
  }

  static PrivateMyUserInfoModel fromEntity(PrivateMyUserInfoEntity entity) {
    return PrivateMyUserInfoModel(
      loginType: entity.loginType,
      userType: entity.userType,
    );
  }
}
