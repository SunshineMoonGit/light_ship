import 'package:light_ship/config/app/const/app_svg.dart';

extension AppSvgExtension on String {
  String bold() {
    return '$this${AppSvg.bold}';
  }

  String stringToSvg() {
    switch (this) {
      case 'name':
        return AppSvg.name;
      case 'email':
        return AppSvg.email.bold();
      case 'company':
        return AppSvg.company.bold();
      case 'team':
        return AppSvg.team.bold();
      case 'fax':
        return AppSvg.fax.bold();
      case 'phone':
        return AppSvg.phone.bold();
      case 'search':
        return AppSvg.search;
    }
    return '';
  }
}

extension StringExtension on String? {
  bool isNothing() {
    return (this == null) || (this == '');
  }

  bool isNull() {
    return this == null;
  }

  String orDash() {
    return this ?? '-';
  }
}
