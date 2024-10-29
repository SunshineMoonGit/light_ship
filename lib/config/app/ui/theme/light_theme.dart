import 'package:flutter/material.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/config/app/ui/theme/app_theme.dart';
import 'package:light_ship/config/app/ui/theme/resource/palette.dart';

class LightTheme extends AppTheme {
  LightTheme()
      : super(
          type: ThemeType.light,
          brightness: Brightness.light,
          color: _initColor(),
          deco: _initDeco(),
        );

  static AppColor _initColor() {
    return AppColor(
      brightness: Brightness.light,
      primary: Palette.green,
      onPrimary: Palette.white,
      primaryContainer: Palette.green.withOpacity(0.1),
      onPrimaryContainer: Palette.grey800,

      error: Palette.red500,
      onError: Palette.white,
      errorContainer: Palette.red500.withOpacity(0.1),
      onErrorContainer: Palette.grey800,
      //
      background: Palette.white,
      onBackground: Palette.black,

      surface: Palette.grey200,
      onSurface: Palette.grey800,

      tertiary: Palette.grey250,
      onTertiary: Palette.grey750,
      // tertiaryContainer: Palette.orange500.withOpacity(0.1),
      // onTertiaryContainer: Palette.grey800,

      secondary: Palette.grey400,
      onSecondary: Palette.grey600,
      secondaryContainer: Palette.teal500.withOpacity(0.1),
      onSecondaryContainer: Palette.grey800,

      outline: Palette.grey400,
      outlineVariant: Palette.grey300,

      surfaceVariant: Palette.white,
      onSurfaceVariant: Palette.black,

      //
      shadow: Palette.grey900.withOpacity(0.1),
      scrim: Palette.grey900.withOpacity(0.2),
      inverseSurface: Palette.grey800,
      onInverseSurface: Palette.grey100,
      inversePrimary: Palette.green.withOpacity(0.8),
      surfaceTint: Palette.green.withOpacity(0.05),
    );
  }

  static AppDeco _initDeco() {
    return AppDeco(
      shadow: [
        BoxShadow(
          color: Palette.black.withOpacity(0.1),
          blurRadius: 35.0,
          offset: const Offset(0, 10),
          // offset = const Offset(0, 10),
        ),
        // BoxShadow(
        //   color: Palette.black.withOpacity(0.1),
        //   blurRadius: 35,
        // ),
      ],
    );
  }
}
