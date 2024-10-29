import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseSliverAppBar extends ConsumerWidget {
  const BaseSliverAppBar({
    super.key,
    this.pinned = true,
    required this.flexibleSpace,
    this.expandedHeight,
    this.title,
    this.bottom,
    this.leading,
    this.actions,
  });

  final bool pinned;
  final Widget flexibleSpace;
  final double? expandedHeight;
  final Widget? title;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      leading: leading,
      actions: actions,
      title: title,
      backgroundColor: context.colorScheme.background,
      surfaceTintColor: context.colorScheme.background,
      pinned: pinned,
      expandedHeight: expandedHeight,
      toolbarHeight: kToolbarHeight,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }
}
