import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/app_bar/base_sliver_app_bar.dart';
import 'package:light_ship/shared/widgets/app_bar/component/app_bar_item.dart';
import 'package:light_ship/shared/widgets/card/custom_card.dart';

class OtherProfileAppBarWidget extends ConsumerWidget {
  const OtherProfileAppBarWidget({
    super.key,
    required this.userData,
  });

  final OtherUserInfoEntity userData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double expandedHeight = MediaQuery.of(context).size.width * Dimensions.cardRatio - kToolbarHeight;

    return BaseSliverAppBar(
      leading: _backSpace(context),
      actions: [
        _moreVertical(context, ref),
      ],
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: CustomCard(imagePath: userData.cardImage),
      ),
    );
  }

  Widget _backSpace(BuildContext context) {
    return AppBarItem(
      onTap: () => context.pop(),
      icon: AppSvg.arrowLeft,
      iconColor: context.colorScheme.onBackground,
      padding: Dimensions.paddingAll / 2,
      backgroundColor: context.colorScheme.background.withOpacity(.5),
    );
  }

  Widget _moreVertical(BuildContext context, WidgetRef ref) {
    return AppBarItem(
      icon: AppSvg.moreVertical,
      padding: Dimensions.paddingAll / 2,
      onTap: () => ref.read(modalProvider.notifier).show(),
    );
  }
}
