import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/button/custom_button_with_title.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.onTap,
    required this.svg,
    this.hasColor = false,
  });

  final Future<void> Function() onTap;
  final String svg;
  final bool hasColor;

  @override
  Widget build(BuildContext context) {
    return CustomButtonWithTitle(
      onTap: onTap,
      backgroundColor: context.colorScheme.tertiaryContainer,
      textColor: context.colorScheme.onTertiaryContainer,
      icon: BaseSvg.platform(item: svg, color: context.colorScheme.onTertiaryContainer, hasColor: hasColor),
      title: '${AppString.sign}$svg',
    );
  }
}
