import 'package:light_ship/config/app/const/app_svg.dart';

class PublicExtraItem {
  final String url;

  const PublicExtraItem({required this.url});

  String get svg {
    if (url.contains(AppSvg.facebook)) {
      return AppSvg.facebook;
    } else if (url.contains(AppSvg.github)) {
      return AppSvg.github;
    } else if (url.contains(AppSvg.instagram)) {
      return AppSvg.instagram;
    } else if (url.contains(AppSvg.kakao)) {
      return AppSvg.kakao;
    } else if (url.contains(AppSvg.naver)) {
      return AppSvg.naver;
    } else if (url.contains(AppSvg.soundCloud)) {
      return AppSvg.soundCloud;
    } else if (url.contains(AppSvg.x)) {
      return AppSvg.x;
    } else if (url.contains(AppSvg.youtube)) {
      return AppSvg.youtube;
    } else if (url.contains(AppSvg.google)) {
      return AppSvg.google;
    } else {
      return '';
    }
  }
}
