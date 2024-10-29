import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/services/converter/base_converter.dart';
import 'package:light_ship/shared/widgets/avatar/base_avatar.dart';
import 'package:light_ship/shared/widgets/text/custom_desc_text.dart';
import 'package:light_ship/shared/widgets/text/custom_large_text.dart';

class OtherProfileBriefInfoWidget extends StatelessWidget {
  const OtherProfileBriefInfoWidget({
    super.key,
    required this.userData,
  });

  final PublicUserInfoEntity userData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BaseAvatar(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLargeText('${userData.name}'),
            CustomDescText('Updated ${BaseConverter.simpleDate(userData.lastUpdated)}'),
          ],
        ),
      ].addSpaceBetween(Dimensions.horizontalSpaceMedium, startSkip: true, endSkip: true),
    );
  }
}
