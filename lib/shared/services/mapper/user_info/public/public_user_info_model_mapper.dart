import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';

class PublicUserInfoModelMapper {
  static PublicUserInfoEntity toEntity(PublicUserInfoModel data) {
    return PublicUserInfoEntity(
      localUid: data.localUid,
      name: data.name,
      profileImage: data.profileImage,
      cardImage: data.cardImage,
      email: data.email,
      team: data.team,
      company: data.company,
      phone: data.phone,
      fax: data.fax,
    );
  }

  static PublicUserInfoModel fromEntity(PublicUserInfoEntity entity) {
    return PublicUserInfoModel(
      localUid: entity.localUid,
      name: entity.name,
      profileImage: entity.profileImage,
      cardImage: entity.cardImage,
      email: entity.email,
      team: entity.team,
      company: entity.company,
      phone: entity.phone,
      fax: entity.fax,
    );
  }
}
