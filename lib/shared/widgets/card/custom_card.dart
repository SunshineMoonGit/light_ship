import 'package:flutter/material.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/widgets/card/base_card.dart';
import 'package:light_ship/shared/widgets/card/component/custom_card_all_in_one.dart';
import 'package:light_ship/shared/widgets/card/component/custom_card_empty.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.imagePath,
    this.onBorder = true,
    this.borderRadius = true,
    this.viewSvg = false,
    this.aspectRatio,
  });

  final String? imagePath;
  final bool onBorder;
  final bool borderRadius;
  final bool viewSvg;
  final double? aspectRatio;

  @override
  Widget build(BuildContext context) {
    final bool hasImage = imagePath.isNull();

    return BaseCard(
      onBorder: hasImage,
      borderRadius: borderRadius,
      child: hasImage
          ? CustomCardEmpty(
              viewSvg: viewSvg,
            )
          : CustomCardAllInOne(
              imagePath: imagePath!,
            ),
    );
  }
}
