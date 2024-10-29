// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:light_ship/config/app/const/app_svg.dart';
// import 'package:light_ship/config/app/enums/ui_enums.dart';
// import 'package:light_ship/shared/provider/image_manager_provider.dart';
// import 'package:light_ship/shared/services/items/modal_item_model.dart';
// import 'package:light_ship/shared/widgets/modal/component/base/base_modal_content.dart';
// import 'package:light_ship/shared/widgets/modal/model/modal_state.dart';

// class ImageModalContent extends ConsumerWidget {
//   const ImageModalContent(
//     this.modalState, {
//     super.key,
//   });

//   final ModalState modalState;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     ImageType iType = ImageType.none;
//     if (modalState.modalType == ModalType.editProfile) {
//       iType = ImageType.profile;
//     } else if (modalState.modalType == ModalType.editCard) {
//       iType = ImageType.card;
//     }

//     List<ModalItemModel> items = [
//       ModalItemModel(
//         icon: AppSvg.camera,
//         title: AppSvg.camera,
//         onTap: () async {
//           await ref.read(imageMangerProvider.notifier).getImage(GetImageMethodType.camera, iType);
//         },
//       ),
//       ModalItemModel(
//         icon: AppSvg.gallery,
//         title: AppSvg.gallery,
//         onTap: () async {
//           await ref.read(imageMangerProvider.notifier).getImage(GetImageMethodType.gallery, iType);
//         },
//       ),
//     ];

//     return ModalContent(items: items, modalState: modalState);
//   }
// }
