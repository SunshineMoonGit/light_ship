import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/providers/wallet/custom_image_provider.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_setting_layout.dart';
import 'package:light_ship/features/presentation/views/register/widgets/zcommon/register_basic_info_widget.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/account_profile/setting_profile_card_widget.dart';
import 'package:light_ship/shared/provider/image_manager_provider.dart';
import 'package:light_ship/shared/provider/text_manager_provider.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class ProfileSettingScreen extends ConsumerWidget {
  static String get route => '/setting/profile';

  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyUserInfoEntity myUserInfo = ref.read(myUserInfoProvider);

    final ImageControllerManager imageManager = ref.watch(imageMangerProvider)..setValue(myUserInfo.publicInfo);
    final TextControllerManager controllerManager = ref.watch(controllerManagerProvider(ControllerType.register))
      ..setValue(myUserInfo.publicInfo);

    return CustomSliverSettingLayout(
      appBarTitle: AppString.profile,
      slivers: [
        SettingProfileCardWidget(cardImagePath: myUserInfo.cardImage),
        Dimensions.verticalSpaceSmall,
        RegisterBasicInfoWidget(manager: controllerManager),
        Dimensions.verticalSpaceLarge,
      ],
      bottomTitle: AppString.save,
      bottomOnTap: () => AppMethod(ref).auth.update(imageManager.card, controllerManager),
    );
  }
}
