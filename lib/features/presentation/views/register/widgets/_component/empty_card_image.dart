import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/shared/widgets/card/base_card.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class EmptyCardImage extends StatelessWidget {
  const EmptyCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseCard(
      onBorder: true,
      child: Center(
        child: BaseSvg(item: AppSvg.addCircle),
      ),
    );
  }
}
