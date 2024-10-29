import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/text/custom_large_text.dart';

class CustomContainerWithTitle extends StatelessWidget {
  const CustomContainerWithTitle({
    super.key,
    required this.title,
    required this.child,
    this.background,
    this.padding,
    this.hideContainer = false,
  });

  final String title;
  final Widget child;
  final bool hideContainer;
  final Color? background;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomLargeText(title),
        Dimensions.verticalSpaceSmall,
        _buildChild(),
      ],
    );
  }

  Widget _buildChild() {
    if (hideContainer == false) {
      return BaseContainer(
        padding: padding ?? Dimensions.paddingAll,
        background: background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            child,
          ],
        ),
      );
    }
    return child;
  }
}
