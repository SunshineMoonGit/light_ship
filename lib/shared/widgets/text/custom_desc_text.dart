import 'package:flutter/material.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class CustomDescText extends StatelessWidget {
  const CustomDescText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return BaseText(
      text,
      style: context.textTheme.bodyMedium!.copyWith(color: context.colorScheme.onSecondary),
    );
  }
}
