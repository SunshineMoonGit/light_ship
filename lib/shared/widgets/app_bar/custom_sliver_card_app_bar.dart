// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class CustomSliverCardAppBar extends StatelessWidget {
  const CustomSliverCardAppBar({
    super.key,
    required this.header,
    required this.headerHeight,
  });
  final Widget header;
  final double headerHeight;

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        const toolbarHeight = kToolbarHeight;
        final expandedHeight = headerHeight - MediaQuery.of(context).viewPadding.top;
        final isScrolledUnder = constraints.scrollOffset > expandedHeight - toolbarHeight;
        return SliverAppBar(
          backgroundColor: context.colorScheme.background,
          surfaceTintColor: Colors.transparent,
          toolbarHeight: toolbarHeight,
          pinned: true,
          title: AnimatedOpacity(
            opacity: isScrolledUnder ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            curve: const Cubic(0.2, 0.0, 0.0, 1.0),
            child: Container(),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          centerTitle: true,
          titleSpacing: 8,
          flexibleSpace: FlexibleSpaceBar(background: header),
          expandedHeight: expandedHeight,
        );
      },
    );
  }
}
