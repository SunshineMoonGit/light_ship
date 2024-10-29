import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/features/presentation/views/register/screens/base_register_screen.dart';
import 'package:light_ship/shared/provider/image_manager_provider.dart';
import 'package:light_ship/shared/provider/text_manager_provider.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class OtherProfileEditScreen extends ConsumerWidget {
  static String get route => '/edit/other_profile';

  const OtherProfileEditScreen({
    super.key,
    required this.userData,
  });

  final OtherUserInfoEntity userData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ImageControllerManager imageManager = ref.watch(imageMangerProvider);
    final TextControllerManager controllerManager = ref.watch(controllerManagerProvider(ControllerType.register))
      ..setValue(userData.publicInfo);

    Future<void> onSave() async {
      await AppMethod(ref).wallet.edit(userData, imageManager, controllerManager).then((value) => context.pop());
    }

    return const CustomSliverLayout();

    CustomRegisterLayout(
      imageManager: imageManager,
      controllerManager: controllerManager,
      onSave: onSave,
      title: '',
    );
  }
}


// class OtherProfileEditScreen extends ConsumerWidget {
//   static String get route => '/edit/other_profile';

//   const OtherProfileEditScreen({
//     super.key,
//     required this.userData,
//   });

//   final OtherUserInfoEntity userData;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final ImageControllerManager imageManager = ref.watch(imageMangerProvider);
//     final TextControllerManager controllerManager = ref.watch(controllerManagerProvider(ControllerType.register))
//       ..setValue(userData.publicInfo);

//     Future<void> onSave() async {
//       await AppMethod(ref).wallet.edit(userData, imageManager, controllerManager).then((value) => context.pop());
//     }

//     return CustomRegisterLayout(
//       imageManager: imageManager,
//       controllerManager: controllerManager,
//       onSave: onSave,
//       title: '',
//     );
//   }
// }

