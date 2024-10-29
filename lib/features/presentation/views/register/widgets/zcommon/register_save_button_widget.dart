import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/shared/widgets/button/custom_bottom_button.dart';

class RegisterSaveButtonWidget extends ConsumerWidget {
  const RegisterSaveButtonWidget({
    super.key,
    // required this.imagePath,
    // required this.manager,
    // required this.isMyRegister,
    required this.onSave,
  });

  // final String? imagePath;
  // final ControllerManager manager;
  // final bool isMyRegister;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomBottomButton.save(
      onTap: onSave,
      // onTap: () async => isMyRegister ? {} : await AppMethod(ref).wallet.add(imagePath, manager),
    );
  }
}
