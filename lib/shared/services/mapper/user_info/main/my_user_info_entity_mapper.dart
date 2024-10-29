import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class MyUserInfoEntityMapper {
  static MyUserInfoEntity fromController(MyUserInfoEntity data, String? cardImage, TextControllerManager manager) {
    return data.copyWith.publicInfo(
      cardImage: cardImage,
      name: manager.name,
      email: manager.email,
      company: manager.company,
      team: manager.team,
      phone: manager.phone,
      fax: manager.fax,
      lastUpdated: DateTime.now(),
    );
  }
}
