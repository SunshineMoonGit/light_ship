import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/features/presentation/views/register/screens/base_register_screen.dart';
import 'package:light_ship/shared/provider/image_manager_provider.dart';
import 'package:light_ship/shared/provider/text_manager_provider.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/nav_bar/base_nav_bar.dart';

class OtherRegisterScreen extends ConsumerWidget {
  static String get route => '/other_register';

  const OtherRegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ImageControllerManager imageManager = ref.watch(imageMangerProvider);
    final TextControllerManager controllerManager = ref.watch(controllerManagerProvider(ControllerType.register));

    Future<void> onSave() async {
      await AppMethod(ref).wallet.add(imageManager.card, controllerManager);
    }

    return CustomRegisterLayout(
      bottomNavigationBar: const BaseNavBar(),
      imageManager: imageManager,
      controllerManager: controllerManager,
      onSave: onSave,
      title: 'New Card Register',
    );
  }
}
