import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseSvg extends StatelessWidget {
  const BaseSvg({
    super.key,
    required this.item,
    this.size,
    this.color,
    this.hasColor = false,
  });

  final String item;
  final double? size;
  final Color? color;

  final bool hasColor;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '${AppSvg.svgPath}$item${AppSvg.svgExt}',
      width: size ?? Dimensions.svgSmall,
      height: size ?? Dimensions.svgSmall,
      colorFilter: hasColor
          ? const ColorFilter.mode(Colors.transparent, BlendMode.srcATop)
          : ColorFilter.mode(color ?? context.colorScheme.onBackground, BlendMode.srcIn),
    );
  }

  static BaseSvg platform({required String item, Color? color, bool hasColor = false}) {
    return BaseSvg(
      item: '${AppSvg.platform}$item',
      color: color,
      hasColor: hasColor,
    );
  }

  static BaseSvg desc({required String item, required BuildContext context}) {
    return BaseSvg(
      item: item,
      color: context.colorScheme.onSecondary,
    );
  }

  static BaseSvg actions({required String item, bool hasColor = false, Color? color}) {
    return BaseSvg(
      item: item,
      size: Dimensions.svgMedium,
      hasColor: hasColor,
      color: color,
    );
  }
}
