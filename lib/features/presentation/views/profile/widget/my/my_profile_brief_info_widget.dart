import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/converter/base_converter.dart';
import 'package:light_ship/shared/widgets/avatar/base_avatar.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class MyProfileBriefInfoWidget extends StatelessWidget {
  const MyProfileBriefInfoWidget({
    super.key,
    required this.userData,
  });

  final PublicUserInfoEntity userData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BaseAvatar(),
        Dimensions.horizontalSpaceMedium,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseText('${userData.name}', style: context.textTheme.displayLarge),
              BaseText('Updated ${BaseConverter.simpleDate(userData.lastUpdated)}'),
            ],
          ),
        ),
      ],
    );
  }
}
