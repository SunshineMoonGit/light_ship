import 'package:flutter/material.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/container/custom_container_input_detail.dart';

class RegisterBasicInfoWidget extends StatelessWidget {
  const RegisterBasicInfoWidget({
    super.key,
    required this.manager,
  });

  final TextControllerManager manager;

  @override
  Widget build(BuildContext context) {
    return CustomContainerInput(
      title: 'Basic Information',
      manager: manager,
    );
  }
}
