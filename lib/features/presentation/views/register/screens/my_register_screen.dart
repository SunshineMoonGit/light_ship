import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/views/register/screens/base_register_screen.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/provider/image_manager_provider.dart';
import 'package:light_ship/shared/provider/text_manager_provider.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class MyRegisterScreen extends ConsumerWidget {
  static String get route => '/my_register';

  const MyRegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyUserInfoEntity myUserInfo = ref.watch(myUserInfoProvider);
    final ImageControllerManager imageManager = ref.watch(imageMangerProvider);
    final TextControllerManager controllerManager = ref.watch(controllerManagerProvider(ControllerType.register))
      ..setValue(myUserInfo.publicInfo);

    Future<void> onSave() async {
      await AppMethod(ref).auth.update(imageManager.card, controllerManager);
      await ref.authState.check();
    }

    return CustomRegisterLayout(
      title: 'My Info Register',
      myUserInfo: myUserInfo,
      onSave: onSave,
      imageManager: imageManager,
      controllerManager: controllerManager,
    );
  }
}
