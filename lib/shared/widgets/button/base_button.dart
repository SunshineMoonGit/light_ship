import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.child,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.border,
    this.borderRadius,
    this.padding,
    this.width,
  });

  final Widget child;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onTap;
  final double? borderRadius;
  final Border? border;
  final EdgeInsets? padding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: width,
      padding: padding ?? Dimensions.paddingVerticalSmall,
      background: backgroundColor,
      onTap: onTap,
      onElevation: true,
      child: child,
    );
  }
}
