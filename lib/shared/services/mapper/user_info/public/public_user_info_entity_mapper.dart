import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class PublicUserInfoEntityMapper {
  static PublicUserInfoEntity fromController(String? imagePath, String uid, TextControllerManager manager) {
    return PublicUserInfoEntity(
      localUid: uid,
      // createdAt: DateTime.now().toIso8601String(),
      cardImage: imagePath ?? '',
      name: manager.name,
      email: manager.email,
      phone: manager.phone,
      company: manager.company,
      fax: manager.fax,
    );
  }
}
