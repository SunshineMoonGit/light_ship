import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller.dart';
import 'package:light_ship/shared/services/vaildator/validator_service.dart';

class TextControllerFactory {
  static List<TextController> getByType(ControllerType type) {
    switch (type) {
      case ControllerType.signIn:
        return _getSignInControllers();
      case ControllerType.signUp:
        return _getSignUpControllers();
      case ControllerType.register:
        return _getRegisterControllers();
      case ControllerType.search:
        return _getSearchControllers();
      case ControllerType.edit:
        return _getEditControllers();
    }
  }

  static List<TextController> _getSignInControllers() => [
        TextController(item: ControllerItems.email, validator: ValidatorService.email),
        TextController(item: ControllerItems.password, validator: ValidatorService.password, obscureText: true),
      ];

  static List<TextController> _getSignUpControllers() => [
        ..._getSignInControllers(),
        TextController(item: ControllerItems.passwordConfirm, validator: ValidatorService.password, obscureText: true),
      ];

  static List<TextController> _getRegisterControllers() => [
        TextController(item: ControllerItems.name),
        TextController(item: ControllerItems.email, validator: ValidatorService.email),
        TextController(item: ControllerItems.company),
        TextController(item: ControllerItems.team),
        TextController(item: ControllerItems.phone),
        TextController(item: ControllerItems.fax),
      ];

  static List<TextController> _getSearchControllers() => [
        TextController(item: ControllerItems.search, validator: ValidatorService.password),
      ];

  static List<TextController> _getEditControllers() => [
        TextController(item: ControllerItems.edit, validator: ValidatorService.password),
      ];
}
