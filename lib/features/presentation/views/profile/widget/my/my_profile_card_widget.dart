import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/card/base_card.dart';

class MyProfileCardWidget extends StatelessWidget {
  const MyProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Dimensions.standardCardRatio,
      child: Stack(
        children: [
          //!
          BaseCard(
            borderRadius: false,
            child: Container(
              color: context.colorScheme.secondary,
            ),
          ),
          // Positioned(
          //   top: kToolbarHeight,
          //   right: 0,
          //   child: Padding(
          //     padding: Dimensions.paddingHorizontal,
          //     child: GestureDetector(
          //       onTap: () => context.push(BaseSettingScreen.route),
          //       child: BaseSvg.actions(item: AppSvg.settings),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
