import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
    this.onTap,
    this.padding,
    this.backgroundColor,
    this.iconColor,
    this.icon,
  });

  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? iconColor;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding ?? Dimensions.paddingAll / 3,
        child: Container(
          padding: const EdgeInsets.all(Dimensions.screenSizeTiny / 2),
          decoration: BoxDecoration(
            color: backgroundColor ?? context.colorScheme.background.withOpacity(.5),
            shape: BoxShape.circle,
          ),
          child: BaseSvg.actions(
            item: icon ?? AppSvg.arrowLeft,
            color: iconColor ?? context.colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
