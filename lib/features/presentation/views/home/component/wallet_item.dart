import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/widgets/card/custom_card.dart';
import 'package:light_ship/shared/widgets/text/custom_desc_text.dart';
import 'package:light_ship/shared/widgets/text/custom_large_text.dart';

class WalletItem extends ConsumerWidget {
  const WalletItem({
    super.key,
    required this.publicUserData,
    required this.onTap,
  });

  final PublicUserInfoEntity publicUserData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomCard(imagePath: publicUserData.cardImage),
          ),
          Dimensions.horizontalSpaceMedium,
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLargeText('${publicUserData.name}'),
                CustomDescText('${publicUserData.company}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
