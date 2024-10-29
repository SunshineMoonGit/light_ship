import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/ui/theme/component/base_ui.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
    this.borderRadius,
    this.padding,
    this.background,
    this.borderColor,
    this.borderWidth,
    this.onElevation = false,
    this.onTap,
    this.width,
  });

  final Widget child;
  final double? borderRadius;
  final EdgeInsets? padding;
  final Color? background;
  final Color? borderColor;
  final double? borderWidth;
  final bool onElevation;
  final VoidCallback? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final container = Container(
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: background ?? context.colorScheme.background,
        borderRadius: BaseUi(context).borderRadius(radius: borderRadius),
        border: BaseUi(context).border(color: borderColor, width: borderWidth),
        boxShadow: onElevation
            ? [
                BoxShadow(
                  color: context.colorScheme.tertiary,
                  offset: const Offset(0, 5),
                ),
              ]
            : null,
      ),
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        // borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.borderRadiusSmall),
        child: container,
      );
    }

    return container;
  }

  static BaseContainer layout({
    required Widget child,
    required BuildContext context,
    EdgeInsets? padding,
  }) {
    return BaseContainer(
      borderColor: context.colorScheme.background,
      borderWidth: 0,
      padding: padding,
      child: child,
    );
  }
}
