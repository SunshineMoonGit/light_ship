import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/features/presentation/views/setting/screens/setting_screen.dart';
import 'package:light_ship/shared/services/items/app_bar_action_item_model.dart';
import 'package:light_ship/shared/widgets/app_bar/base_app_bar.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class MyProfileAppBarWidget extends BaseAppBar {
  const MyProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      title: "MY",
      centerTitle: false,
      actions: [
        AppBarActionItemModel(
          icon: const BaseSvg(item: AppSvg.settings),
          onTap: () => context.push(SettingScreen.route),
        ),
      ],
    );
  }
}

// class ProfileAppBarWidget extends StatelessWidget {
//   const ProfileAppBarWidget({
//     super.key,
//     required this.userData,
//   });

//   final MyUserInfoModel userData;

//   @override
//   Widget build(BuildContext context) {
//     return const BaseSliverAppBar(
//       title: CustomLogoText(),
//       pinned: true,
//       expandedHeight: 100,
//       flexibleSpace: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Container(
//           //   child: Padding(
//           //     padding: const EdgeInsets.symmetric(
//           //       horizontal: Dimensions.screenSizeSmall,
//           //       vertical: Dimensions.screenSizeSmall,
//           //     ),
//           //     child: SizedBox(
//           //       height: 100,
//           //       child: Row(
//           //         children: [
//           //           Expanded(
//           //             child: Column(
//           //               crossAxisAlignment: CrossAxisAlignment.start,
//           //               children: [
//           //                 CustomTitleText(title: userData.name),
//           //                 BaseText( userData.privateInfo.userType.name),
//           //               ],
//           //             ),
//           //           ),
//           //           Dimensions.horizontalSpaceMedium,
//           //           ProfileCard(cardImage: userData.cardImage),
//           //         ],
//           //       ),
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
