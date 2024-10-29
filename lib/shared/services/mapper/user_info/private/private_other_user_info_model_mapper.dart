import 'package:light_ship/features/data/models/user_info/components/private_other_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_other_user_info_entity.dart';

class PrivateOtherUserInfoModelMapper {
  static PrivateOtherUserInfoEntity toEntity(PrivateOtherUserInfoModel data) {
    return PrivateOtherUserInfoEntity(
      serverUid: data.serverUid,
      isFavorite: data.isFavorite,
      tags: data.tags,
    );
  }

  static PrivateOtherUserInfoModel fromEntity(PrivateOtherUserInfoEntity entity) {
    return PrivateOtherUserInfoModel(
      serverUid: entity.serverUid,
      isFavorite: entity.isFavorite,
      tags: entity.tags,
    );
  }
}
