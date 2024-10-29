import 'package:intl/intl.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';

class BaseConverter {
  static String brightness(ThemeType type) {
    switch (type) {
      case ThemeType.light:
        return 'Light Mode';
      case ThemeType.dark:
        return 'Dark Mode';
    }
  }

  static String simpleDate(DateTime? dateTime) {
    if (dateTime == null) {
      return '-';
    } else {
      return DateFormat("MMM yyyy").format(dateTime);
    }
  }
}
