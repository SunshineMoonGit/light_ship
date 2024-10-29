import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/button/base_button.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class CustomButtonWithTitle extends StatelessWidget {
  const CustomButtonWithTitle({
    super.key,
    this.icon,
    required this.title,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.border,
    this.borderRadius,
    this.padding,
    this.width,
  });

  final BaseSvg? icon;
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onTap;
  final double? borderRadius;
  final Border? border;
  final EdgeInsets? padding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      onTap: onTap,
      child: Row(
        children: [
          if (icon != null) _renderPrefixIcon(icon!),
          _renderTitle(context),
          if (icon != null) _renderPadding(),
        ],
      ),
    );
  }

  Container _renderPadding() {
    return Container(
      padding: Dimensions.paddingHorizontal,
      child: const SizedBox(width: 24),
    );
  }

  Expanded _renderTitle(BuildContext context) {
    return Expanded(
      child: Center(
        child: BaseText.bodyMedium('$title', context),
      ),
    );
  }

  Container _renderPrefixIcon(BaseSvg icon) {
    return Container(
      padding: Dimensions.paddingHorizontal,
      child: icon,
    );
  }
}
