import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

//! image path를 받음
class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,
    required this.child,
    this.borderRadius = true,
    this.onBorder = false,
  });

  final Widget child;
  final bool borderRadius;
  final bool onBorder;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Dimensions.standardCardRatio,
      child: ClipRRect(
        borderRadius: borderRadius ? BorderRadius.circular(Dimensions.borderRadiusSmall) : BorderRadius.zero,
        child: Container(
          decoration: BoxDecoration(
            border: onBorder
                ? Border.all(
                    color: context.colorScheme.tertiary,
                    width: 2,
                  )
                : Border.all(
                    style: BorderStyle.none,
                    width: 0,
                  ),
            borderRadius: borderRadius ? BorderRadius.circular(Dimensions.borderRadiusSmall) : BorderRadius.zero,
          ),
          child: child,
        ),
      ),
    );
  }
}
