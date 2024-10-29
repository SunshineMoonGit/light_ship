import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseText extends ConsumerWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? color;

  const BaseText(
    this.text, {
    this.style,
    this.textAlign,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      Intl.message(text),
      textAlign: textAlign,
      style: style?.copyWith(color: color),
    );
  }



  static BaseText bodyMedium(String text, BuildContext context) {
    return BaseText(
      text,
      style: context.textTheme.bodyMedium,
    );
  }

  static BaseText bodyLarge(String text, BuildContext context) {
    return BaseText(
      text,
      style: context.textTheme.bodyLarge,
    );
  }

  static BaseText headlineLarge(String text, BuildContext context) {
    return BaseText(
      text,
      style: context.textTheme.headlineLarge,
    );
  }

  static BaseText logo(BuildContext context) {
    return BaseText(
      AppString.appName,
      style: const TextStyle(
        fontStyle: FontStyle.italic,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w900,
        fontSize: 50,
      ),
      color: context.colorScheme.primary,
    );
  }
}
