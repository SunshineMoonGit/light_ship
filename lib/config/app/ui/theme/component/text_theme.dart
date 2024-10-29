// part of '../ads.dart';

part of '../app_theme.dart';

extension TextThemeExtension on AppTheme {
  TextTheme get _textTheme => TextTheme(
        ///DISPLAY
        displayLarge: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: _colorScheme.onBackground,
        ),

        //HEADLINE
        headlineLarge: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),

        //TITLE
        titleLarge: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: _colorScheme.onBackground,
        ),

        //BODY
        bodyLarge: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: _colorScheme.onBackground,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: _colorScheme.onBackground,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: _colorScheme.onTertiary,
        ),

        //LABEL
        labelLarge: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: _colorScheme.onBackground,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: _colorScheme.onBackground,
        ),
        labelSmall: TextStyle(
          fontFamily: 'Pretendard',
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: _colorScheme.onBackground,
        ),
      );
}
