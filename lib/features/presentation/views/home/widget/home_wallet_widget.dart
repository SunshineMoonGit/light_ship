// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/home/component/wallet_empty.dart';
import 'package:light_ship/features/presentation/views/home/component/wallet_item.dart';
import 'package:light_ship/features/presentation/views/profile/screens/other_profile_screen.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/text/custom_desc_text.dart';

class HomeWalletWidget extends ConsumerWidget {
  const HomeWalletWidget({
    super.key,
    required this.category,
    required this.categoryList,
  });

  final String category;
  final List<OtherUserInfoEntity> categoryList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (categoryList.isEmpty) {
      return const WalletEmpty();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDescText('$category ${categoryList.length}'),
        ...categoryList.map((e) => WalletItem(
              publicUserData: e.publicInfo,
              onTap: () => context.push(OtherProfileScreen.route, extra: e.serverUid ?? e.localUid),
            )),
      ].addSpaceBetween(
        Dimensions.verticalSpaceMedium,
        startSkip: true,
        endSkip: true,
      ),
    );
  }
}
