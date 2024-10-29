import 'package:light_ship/config/app/enums/ui_enums.dart';

class ImageController {
  final ImageType type;
  String? path;

  ImageController({required this.type, this.path});

  void setPath(String? newPath) => path = newPath;
}
