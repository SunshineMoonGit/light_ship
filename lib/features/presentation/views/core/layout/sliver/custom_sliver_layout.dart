import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/views/core/layout/base_layout.dart';

class CustomSliverLayout extends StatelessWidget {
  const CustomSliverLayout({
    super.key,
    this.scaffoldAppBar,
    this.sliverAppBar,
    this.nonPaddingSlivers,
    this.slivers,
    this.background,
    this.safeAreaTop = false,
    this.safeAreaBottom = false,
    this.physics = const ClampingScrollPhysics(),
    this.bottomNavigationBar,
    this.padding,
  });

  final PreferredSizeWidget? scaffoldAppBar;
  final Widget? sliverAppBar;
  final List<Widget>? nonPaddingSlivers;
  final List<Widget>? slivers;
  final Color? background;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final ScrollPhysics? physics;
  final Widget? bottomNavigationBar;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      appBar: scaffoldAppBar,
      safeAreaTop: safeAreaTop,
      safeAreaBottom: safeAreaBottom,
      background: background,
      bottomNavigationBar: bottomNavigationBar,
      body: CustomScrollView(
        physics: physics,
        slivers: [
          if (sliverAppBar != null) sliverAppBar!,
          if (nonPaddingSlivers != null)
            SliverList(
              delegate: SliverChildListDelegate(nonPaddingSlivers!),
            ),
          if (slivers != null)
            SliverPadding(
              padding: padding ?? Dimensions.paddingHorizontal,
              sliver: SliverList(
                delegate: SliverChildListDelegate(slivers!),
              ),
            ),
        ],
      ),
    );
  }
}
