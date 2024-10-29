import 'dart:io';

import 'package:flutter/material.dart';

class CustomCardAllInOne extends StatelessWidget {
  const CustomCardAllInOne({
    super.key,
    required this.imagePath,
    this.borderRadius = true,
    this.viewSvg,
    this.aspectRatio,
  });

  final String imagePath;
  final bool borderRadius;
  final bool? viewSvg;
  final double? aspectRatio;

  @override
  Widget build(BuildContext context) {
    final bool isNetworkImage = imagePath.startsWith('http://') || imagePath.startsWith('https://');

    return isNetworkImage
        ? Image.network(imagePath, fit: BoxFit.cover)
        : Image.file(
            File(imagePath),
            fit: BoxFit.cover,
          );
  }
}
