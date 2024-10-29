import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/wallet/wallet_provider.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/features/presentation/views/home/widget/home_app_bar_widget.dart';
import 'package:light_ship/features/presentation/views/home/widget/home_my_profile_widget.dart';
import 'package:light_ship/features/presentation/views/home/widget/home_wallet_widget.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';
import 'package:light_ship/shared/widgets/nav_bar/base_nav_bar.dart';

class HomeScreen extends ConsumerWidget {
  static String get route => '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<OtherUserInfoEntity> walletList = ref.watch(walletProvider);
    return CustomSliverLayout(
      scaffoldAppBar: const HomeAppBarWidget(),
      bottomNavigationBar: const BaseNavBar(),
      // physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        const HomeMyProfileWidget(),
        const BaseDivider(),
        HomeWalletWidget(category: '즐겨찾기', categoryList: walletList),
        const BaseDivider(),
        HomeWalletWidget(category: '전체', categoryList: walletList),
      ].addSpaceBetween(Dimensions.verticalSpaceMedium, startSkip: true),
    );
  }
}
