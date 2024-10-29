import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';

class CustomModalDivider extends StatelessWidget {
  const CustomModalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseDivider(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.screenSizeSmall),
    );
  }
}
