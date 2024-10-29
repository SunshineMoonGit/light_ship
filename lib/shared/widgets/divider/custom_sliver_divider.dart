import 'package:flutter/widgets.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';

class CustomSliverDivider extends StatelessWidget {
  const CustomSliverDivider({super.key, this.padding});

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BaseDivider(padding: padding ?? EdgeInsets.zero),
    );
  }
}
