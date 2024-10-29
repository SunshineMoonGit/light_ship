import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/var/profile_config.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/features/presentation/views/profile/widget/my/my_profile_brief_info_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/my/my_profile_card_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcommon/profile_action_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcommon/profile_detail_info_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcommon/profile_extra_urls_widget.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';
import 'package:light_ship/shared/widgets/nav_bar/base_nav_bar.dart';

class MyProfileScreen extends ConsumerWidget {
  static String get route => '/my_profile';

  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyUserInfoEntity userData = ref.watch(myUserInfoProvider);

    return CustomSliverLayout(
      bottomNavigationBar: const BaseNavBar(),
      nonPaddingSlivers: const [MyProfileCardWidget()],
      padding: Dimensions.paddingAll,
      slivers: [
        // 간단 내 정보
        MyProfileBriefInfoWidget(userData: userData.publicInfo),

        ProfileActionWidget(userData: userData.publicInfo, buttons: ProfileConfig.myButtons(context, userData)),

        const BaseDivider(),

        // 상세 내 정보
        ProfileDetailInfoWidget(userData: userData.publicInfo),

        const BaseDivider(),

        ProfileExtraUrlsWidget(userData: userData.publicInfo),
      ].addSpaceBetween(Dimensions.verticalSpaceMedium),
    );
  }
}
