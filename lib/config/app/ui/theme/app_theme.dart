import 'package:flutter/material.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/app/ui/theme/dark_theme.dart';
import 'package:light_ship/config/app/ui/theme/light_theme.dart';

part 'component/app_bar_theme.dart';
part 'component/bottom_nav_bar_theme.dart';
part 'component/color_scheme.dart';
part 'component/input_decoration_theme.dart';
part 'component/text_theme.dart';
part 'foundation/app_color.dart';
part 'foundation/app_deco.dart';

abstract class AppTheme {
  final ThemeType type;
  final Brightness brightness;
  final AppColor color;
  final AppDeco deco;

  AppTheme({
    required this.type,
    required this.brightness,
    required this.color,
    required this.deco,
  });

  // themeData를 getter로 변경
  ThemeData get themeData => ThemeData.from(
        colorScheme: _colorScheme,
        textTheme: _textTheme,
      ).copyWith(
        bottomNavigationBarTheme: _bottomNavBarTheme,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        appBarTheme: _appBarTheme,
        iconTheme: IconThemeData(color: color.onBackground),
        // inputDecorationTheme: _inputDecorationTheme,
      );

  // 팩토리 메서드
  static ThemeData byType(ThemeType themeType) {
    switch (themeType) {
      case ThemeType.light:
        return LightTheme().themeData;
      case ThemeType.dark:
        return DarkTheme().themeData;
    }
  }
}
