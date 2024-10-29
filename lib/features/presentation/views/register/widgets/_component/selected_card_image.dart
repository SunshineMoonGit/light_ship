import 'package:flutter/material.dart';
import 'package:light_ship/shared/widgets/card/custom_card.dart';

class SelectedCardImage extends StatelessWidget {
  const SelectedCardImage({
    super.key,
    required this.cardImage,
  });

  final String cardImage;

  @override
  Widget build(BuildContext context) {
    return CustomCard(imagePath: cardImage);
  }
}
