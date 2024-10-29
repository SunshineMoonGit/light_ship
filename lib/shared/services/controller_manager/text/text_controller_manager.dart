import 'package:flutter/material.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_factory.dart';

class TextControllerManager {
  List<TextController> controllers = [];
  ControllerType type;

  TextControllerManager({required this.type}) {
    controllers = TextControllerFactory.getByType(type);
  }

  void updateType(ControllerType newType) {
    if (type != newType) {
      disposeAll();
      type = newType;
      controllers = TextControllerFactory.getByType(newType);
    }
  }

  TextEditingController? getController(ControllerItems item) {
    return controllers.firstWhere((c) => c.item == item, orElse: () => TextController(item: item)).controller;
  }

  String getValue(ControllerItems name) {
    return getController(name)?.text ?? '';
  }

  void setValue(PublicUserInfoEntity? data) {
    _set(ControllerItems.name, data?.name ?? '');
    _set(ControllerItems.email, data?.email ?? '');
    _set(ControllerItems.company, data?.company ?? '');
    _set(ControllerItems.team, data?.team ?? '');
    _set(ControllerItems.phone, data?.phone ?? '');
    _set(ControllerItems.fax, data?.fax ?? '');
  }

  void _set(ControllerItems item, String value) {
    final controller = getController(item);
    if (controller != null) {
      controller.text = value;
    }
  }

  void clearAll() {
    for (var controller in controllers) {
      controller.controller.clear();
    }
  }

  void disposeAll() {
    for (var controller in controllers) {
      print('${controller.name} delete');
      controller.dispose();
    }
    controllers.clear();
  }

  String get name {
    if (type == ControllerType.register) {
      return getValue(ControllerItems.name);
    }
    return '';
  }

  String get email {
    if (type == ControllerType.signIn || type == ControllerType.signUp || type == ControllerType.register) {
      return getValue(ControllerItems.email);
    }
    return '';
  }

  String get password {
    if (type == ControllerType.signIn || type == ControllerType.signUp) {
      return getValue(ControllerItems.password);
    }
    return '';
  }

  String get passwordConfirm {
    if (type == ControllerType.signIn || type == ControllerType.signUp) {
      return getValue(ControllerItems.passwordConfirm);
    }
    return '';
  }

  String get team {
    if (type == ControllerType.register) {
      return getValue(ControllerItems.team);
    }
    return '';
  }

  String get company {
    if (type == ControllerType.register) {
      return getValue(ControllerItems.company);
    }
    return '';
  }

  String get phone {
    if (type == ControllerType.register) {
      return getValue(ControllerItems.phone);
    }
    return '';
  }

  String get fax {
    if (type == ControllerType.register) {
      return getValue(ControllerItems.fax);
    }
    return '';
  }
}
