import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_other_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_with_modal_layout.dart';
import 'package:light_ship/features/presentation/views/profile/widget/other/other_profile_app_bar_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/other/other_profile_brief_info_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcommon/profile_detail_info_widget.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcommon/profile_extra_urls_widget.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';
import 'package:light_ship/shared/widgets/modal/profile_more_modal_content.dart';

class OtherProfileScreen extends ConsumerWidget {
  static String get route => '/other_profile';

  const OtherProfileScreen({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final OtherUserInfoEntity userData = ref.watch(walletProvider).firstWhere((element) {
    //   if (element.privateInfo.serverUid == uid) {
    //     return true;
    //   } else {
    //     return element.publicInfo.localUid == uid;
    //   }
    // });

    OtherUserInfoEntity userData = OtherUserInfoEntity(
      publicInfo: PublicUserInfoEntity(
        name: '김지수',
        company: '삼성전자',
        email: 'twkang1101@gmail.com',
        team: '영업직',
        lastUpdated: DateTime.now(),
        cardImage:
            'https://marketplace.canva.com/EAFL_n4BYZ0/3/0/1600w/canva-black-and-white-simple-personal-business-card-vwTbSKlknzM.jpg',
        extra: [
          'https://www.youtube.com/@Lazuli98',
          'https://x.com/gosegu486385',
        ],
      ),
      privateInfo: const PrivateOtherUserInfoEntity(
        tags: [],
      ),
    );

    return CustomSliverWithModalLayout(
      safeAreaTop: false,
      sliverAppBar: OtherProfileAppBarWidget(userData: userData),
      slivers: [
        OtherProfileBriefInfoWidget(userData: userData.publicInfo),
        const BaseDivider(),
        ProfileDetailInfoWidget(userData: userData.publicInfo),
        const BaseDivider(),
        ProfileExtraUrlsWidget(userData: userData.publicInfo),
      ].addSpaceBetween(Dimensions.verticalSpaceMedium),
      modal: ProfileMoreModalContent(userData),
    );
  }
}
