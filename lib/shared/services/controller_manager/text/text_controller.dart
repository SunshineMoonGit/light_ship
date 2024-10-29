import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';

class TextController {
  final ControllerItems item;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  TextController({
    required this.item,
    this.validator,
    this.obscureText = false,
  }) : controller = TextEditingController();

  void dispose() => controller.dispose();

  String get name => item.name;
}
