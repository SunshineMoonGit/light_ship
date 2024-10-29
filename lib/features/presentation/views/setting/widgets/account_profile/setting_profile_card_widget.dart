import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/shared/widgets/card/custom_card.dart';

class SettingProfileCardWidget extends ConsumerWidget {
  const SettingProfileCardWidget({
    super.key,
    required this.cardImagePath,
  });

  final String? cardImagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      // onTap: () => AppMethod(ref).modalShow(),
      child: CustomCard(
        imagePath: cardImagePath,
        viewSvg: true,
      ),
    );
  }
}
