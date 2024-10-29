import 'package:flutter/material.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/container/custom_container_with_title.dart';
import 'package:light_ship/shared/widgets/text_field/custom_info_field.dart';

class CustomContainerInput extends StatelessWidget {
  const CustomContainerInput({
    super.key,
    required this.manager,
    required this.title,
  });

  final TextControllerManager manager;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
      title: title,
      child: CustomInfoField(
        manager: manager,
      ),
    );
  }
}
