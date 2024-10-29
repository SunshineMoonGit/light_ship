import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/container/custom_container_with_title.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';
import 'package:light_ship/shared/widgets/text/custom_desc_text.dart';

class ProfileDetailInfoWidget extends StatelessWidget {
  const ProfileDetailInfoWidget({super.key, required this.userData});

  final PublicUserInfoEntity userData;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
      title: 'Information',
      hideContainer: true,
      child: Column(
        children: userData.detailInfo.toWidget(
          itemBuilder: (context, index, item) => Row(
            children: [
              BaseSvg.desc(item: item.svg, context: context),
              Dimensions.horizontalSpaceMedium,
              CustomDescText(item.category),
              const Spacer(),
              BaseText(item.value),
            ],
          ),
          separatorBuilder: (context, index) => Dimensions.verticalSpaceSmall,
          context: context,
        ),
      ),
    );
  }
}
