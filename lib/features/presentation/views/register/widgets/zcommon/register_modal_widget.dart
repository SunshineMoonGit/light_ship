// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:light_ship/config/app/const/app_svg.dart';
// import 'package:light_ship/config/app/enums/auth_enums.dart';
// import 'package:light_ship/config/app/enums/ui_enums.dart';
// import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
// import 'package:light_ship/features/presentation/providers/wallet/custom_image_provider.dart';
// import 'package:light_ship/shared/services/items/modal_item_model.dart';
// import 'package:light_ship/shared/widgets/modal/base_bottom_modal.dart';

// class RegisterModalWidget extends ConsumerWidget {
//   const RegisterModalWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     List<ModalItemModel> items = [
//       ModalItemModel(
//         icon: AppSvg.camera,
//         title: AppSvg.camera,
//         onTap: () async {
//           await ref.read(customImageProvider.notifier).getImage(GetImageMethodType.camera);
//         },
//       ),
//       ModalItemModel(
//         icon: AppSvg.gallery,
//         title: AppSvg.gallery,
//         onTap: () async {
//           await ref.read(customImageProvider.notifier).getImage(GetImageMethodType.gallery);
//         },
//       ),
//     ];

//     final UserType userType = ref.read(myUserInfoProvider).userType;

//     return const BaseBottomModal();
//   }
// }
