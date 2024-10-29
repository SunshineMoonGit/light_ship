// import 'package:edge_detection/edge_detection.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:light_ship/config/app/enums/ui_enums.dart';
// import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
// import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
// import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
// import 'package:permission_handler/permission_handler.dart';

// final imageMangerProvider =
//     AutoDisposeNotifierProvider<ImageMangerProviderNotifier, ImageControllerManager>(ImageMangerProviderNotifier.new);

// class ImageMangerProviderNotifier extends AutoDisposeNotifier<ImageControllerManager> {
//   @override
//   ImageControllerManager build() {
//     return ImageControllerManager();
//   }

//   Future<void> getImage(GetImageMethodType method, ImageType iType) async {
//     ref.read(modalProvider.notifier).hide();

//     String? imagePath =
//         await (method == GetImageMethodType.gallery ? _getImageFromGallery(iType) : _getImageFromCamera(iType));

//     if (imagePath != null) {
//       state.updateImage(iType, imagePath);
//     }
//   }

//   Future<String?> _getImageFromCamera(ImageType iType) async {
//     if (!await _requestCameraPermission()) return null;

//     String imagePath = await state.createImagePath();

//     try {
//       bool success = await EdgeDetection.detectEdge(
//         imagePath,
//         canUseGallery: false,
//         androidScanTitle: '스캔 중',
//         androidCropTitle: '자르기',
//         androidCropBlackWhiteTitle: '흑백',
//         androidCropReset: '초기화',
//       );

//       if (success) {
//         // return state.fromType(mType, imagePath);
//       } else {
//         print('카메라 이미지 처리 실패');
//       }
//     } catch (e) {
//       print('카메라 캡처 오류: $e');
//     }
//     return null;
//   }

//   Future<String?> _getImageFromGallery(ImageType iType) async {
//     String imagePath = await state.createImagePath();

//     try {
//       bool success = await EdgeDetection.detectEdgeFromGallery(
//         imagePath,
//         androidCropTitle: '자르기',
//         androidCropBlackWhiteTitle: '흑백',
//         androidCropReset: '초기화',
//       );

//       if (success) {
//         // state = state.fromType(mType, imagePath);
//       } else {
//         print('갤러리 이미지 처리 실패');
//       }
//     } catch (e) {
//       print('갤러리 선택 오류: $e');
//     }
//     return null;
//   }

//   void setValues(PublicUserInfoEntity data) {
//     state.setValues(data);
//   }

//   Future<bool> _requestCameraPermission() async {
//     var status = await Permission.camera.request();
//     return status.isGranted;
//   }
// }
