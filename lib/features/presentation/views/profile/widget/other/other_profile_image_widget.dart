import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/avatar/base_avatar.dart';
import 'package:light_ship/shared/widgets/card/custom_card.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class OtherProfileImageWidget extends StatelessWidget {
  const OtherProfileImageWidget({
    super.key,
    required this.userData,
  });

  final PublicUserInfoEntity userData;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).width * Dimensions.cardRatio + Dimensions.avatarSize / 2;

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          // card
          CustomCard(imagePath: userData.cardImage),

          // 뒤로가기 버튼
          Positioned(
            top: MediaQuery.of(context).padding.top,
            child: Padding(
              padding: Dimensions.paddingHorizontal,
              child: SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.colorScheme.background.withOpacity(.5),
                          shape: BoxShape.circle,
                        ),
                        child: BaseSvg.actions(
                          item: AppSvg.arrowLeft,
                          color: context.colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // profile + name
          const Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(child: BaseAvatar()),
          ),
        ],
      ),
    );
  }
}
