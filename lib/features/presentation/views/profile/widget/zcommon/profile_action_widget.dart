import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcomponent/profile_action_button.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/button/custom_button_with_title.dart';

class ProfileActionWidget extends ConsumerWidget {
  const ProfileActionWidget({
    super.key,
    required this.userData,
    required this.buttons,
  });

  final PublicUserInfoEntity userData;
  final List<ProfileActionButton> buttons;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: buttons.toWidget(
        itemBuilder: (context, index, item) => Expanded(
          child: CustomButtonWithTitle(
            title: item.title,
            // backgroundColor: context.colorScheme.,
            border: Border.all(color: context.colorScheme.outline),
            onTap: item.onTap,
          ),
        ),
        separatorBuilder: (context, index) => Dimensions.horizontalSpaceMedium,
        context: context,
      ),
    );
  }
}
