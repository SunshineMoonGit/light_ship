import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class CustomCardEmpty extends StatelessWidget {
  const CustomCardEmpty({
    super.key,
    required this.viewSvg,
  });

  final bool viewSvg;

  @override
  Widget build(BuildContext context) {
    if (viewSvg) {
      return const Center(child: BaseSvg(item: AppSvg.addCircle));
    } else {
      return Container();
    }
  }
}
