import 'package:flutter/material.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/config/app/ui/theme/app_theme.dart';
import 'package:light_ship/config/app/ui/theme/resource/palette.dart';

class DarkTheme extends AppTheme {
  DarkTheme() : super(type: ThemeType.dark, brightness: Brightness.dark, color: _initColor(), deco: _initDeco());

  static AppColor _initColor() {
    return AppColor(
      brightness: Brightness.dark,
      //
      background: Palette.grey900,
      onBackground: Palette.grey100,

      surface: Palette.grey800,
      onSurface: Palette.grey200,

      tertiary: Palette.grey700,
      onTertiary: Palette.grey300,
      // tertiaryContainer: Palette.orange500.withOpacity(0.1),
      // onTertiaryContainer: Palette.grey800,

      secondary: Palette.grey600,
      onSecondary: Palette.grey400,
      secondaryContainer: Palette.teal500.withOpacity(0.1),
      onSecondaryContainer: Palette.grey200,

      outline: Palette.grey600,
      outlineVariant: Palette.grey700,

      surfaceVariant: Palette.black,
      onSurfaceVariant: Palette.white,

      //

      primary: Palette.green,
      onPrimary: Palette.white,
      primaryContainer: Palette.green.withOpacity(0.2),
      onPrimaryContainer: Palette.grey100,

      tertiaryContainer: Palette.orange500.withOpacity(0.2),
      onTertiaryContainer: Palette.grey100,
      error: Palette.red500,
      onError: Palette.white,
      errorContainer: Palette.red500.withOpacity(0.2),
      onErrorContainer: Palette.grey100,

      shadow: Palette.black,
      scrim: Palette.black.withOpacity(0.4),
      inverseSurface: Palette.grey200,
      onInverseSurface: Palette.grey800,
      inversePrimary: Palette.green.withOpacity(0.8),
      surfaceTint: Palette.green.withOpacity(0.2),
    );
  }

  static AppDeco _initDeco() {
    return AppDeco(
      shadow: [
        BoxShadow(
          color: Palette.black.withOpacity(0.35),
          blurRadius: 35,
        ),
      ],
    );
  }
}
