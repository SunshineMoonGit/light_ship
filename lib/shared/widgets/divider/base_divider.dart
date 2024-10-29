import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseDivider extends ConsumerWidget {
  const BaseDivider({
    super.key,
    this.padding,
    this.thickness,
  });

  final EdgeInsetsGeometry? padding;
  final double? thickness;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Divider(
        height: 0,
        thickness: thickness ?? 1.5,
        color: context.colorScheme.tertiary,
      ),
    );
  }
}
