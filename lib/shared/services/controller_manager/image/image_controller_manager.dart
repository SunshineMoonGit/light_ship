import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:light_ship/config/app/enums/ui_enums.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class ImageControllerManager {
  final List<ImageController> controllers;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  ImageControllerManager()
      : controllers = [
          ImageController(type: ImageType.profile),
          ImageController(type: ImageType.card),
        ];

  void updateImage(ImageType type, String? imagePath) {
    controllers.firstWhere((ctrl) => ctrl.type == type).setPath(imagePath);
  }

  String? getImagePath(ImageType type) {
    return controllers.firstWhere((ctrl) => ctrl.type == type).path;
  }

  void setValue(PublicUserInfoEntity data) {
    updateImage(ImageType.profile, data.profileImage);
    updateImage(ImageType.card, data.cardImage);
  }

  String? get profile => getImagePath(ImageType.profile);
  String? get card => getImagePath(ImageType.card);

  Future<String?> processAndUploadImage(String myUid, PublicUserInfoModel newData, ImageType imageType) async {
    try {
      final String? imagePath = getImagePath(imageType);
      if (imagePath == null) return null;

      final String compressedImagePath = await _compressImage(imagePath, newData.localUid!);
      final imageUrl = await _uploadImage(myUid, newData.localUid!, compressedImagePath, imageType);

      await File(compressedImagePath).delete();
      return imageUrl;
    } catch (e) {
      print('Error processing image: $e');
      return null;
    }
  }

  Future<String> _compressImage(String imagePath, String saveUid) async {
    final tempDir = await getTemporaryDirectory();
    final targetPath = '${tempDir.path}/$saveUid.jpeg';

    final result = await FlutterImageCompress.compressAndGetFile(
      imagePath,
      targetPath,
      format: CompressFormat.jpeg,
      quality: 30,
    );

    if (result == null) throw Exception('Image compression failed');
    return result.path;
  }

  Future<String> _uploadImage(String myUid, String saveUid, String imagePath, ImageType imageType) async {
    final file = File(imagePath);
    final fileName = '${saveUid}_${imageType.toString().split('.').last}.jpeg';
    final storageRef = _storage.ref().child('$myUid/$fileName');

    final uploadTask = storageRef.putFile(file, SettableMetadata(contentType: 'image/jpeg'));
    final snapshot = await uploadTask.whenComplete(() {});

    return await snapshot.ref.getDownloadURL();
  }

  Future<String> createImagePath() async {
    final directory = await getApplicationSupportDirectory();
    return join(directory.path, "${DateTime.now().millisecondsSinceEpoch}.jpeg");
  }
}
