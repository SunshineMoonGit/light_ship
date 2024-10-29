// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:light_ship/config/app/const/app_svg.dart';
// import 'package:light_ship/config/app/enums/auth_enums.dart';
// import 'package:light_ship/shared/services/items/modal_item_model.dart';
// import 'package:light_ship/shared/widgets/modal/base_bottom_modal.dart';

// class HomeBottomModalWidget extends ConsumerWidget {
//   const HomeBottomModalWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     List<ModalItemModel> items = [
//       ModalItemModel(
//         icon: AppSvg.cardRegister,
//         title: '카드 등록',
//         // onTap: () => context.push(RegisterOtherProfileScreen.route),
//         onTap: () {},
//       ),
//       ModalItemModel(
//         userType: UserType.premium,
//         icon: AppSvg.camera,
//         title: 'QRCode',
//         // onTap: () => context.push(RegisterOtherProfileScreen.route),
//         onTap: () {},
//       ),
//     ];

//     return BaseBottomModal(
//       items: items,
//       userType: UserType.normal,
//     );
//   }
// }
