part of '../app_theme.dart';

extension ColorSchemeExtension on AppTheme {
  ColorScheme get _colorScheme => ColorScheme(
        brightness: color.brightness,
        primary: color.primary,
        onPrimary: color.onPrimary,
        primaryContainer: color.primaryContainer ?? color.primary.withOpacity(0.2),
        onPrimaryContainer: color.onPrimaryContainer ?? color.onPrimary,
        secondary: color.secondary,
        onSecondary: color.onSecondary,
        secondaryContainer: color.secondaryContainer ?? color.secondary.withOpacity(0.2),
        onSecondaryContainer: color.onSecondaryContainer ?? color.onSecondary,
        tertiary: color.tertiary ?? color.primary,
        onTertiary: color.onTertiary ?? color.onPrimary,
        tertiaryContainer:
            color.tertiaryContainer ?? color.tertiary?.withOpacity(0.2) ?? color.primary.withOpacity(0.2),
        onTertiaryContainer: color.onTertiaryContainer ?? color.onTertiary ?? color.onPrimary,
        error: color.error,
        onError: color.onError,
        errorContainer: color.errorContainer ?? color.error.withOpacity(0.2),
        onErrorContainer: color.onErrorContainer ?? color.onError,
        background: color.background,
        onBackground: color.onBackground,
        surface: color.surface,
        onSurface: color.onSurface,
        surfaceVariant: color.surfaceVariant ?? color.surface.withOpacity(0.8),
        onSurfaceVariant: color.onSurfaceVariant ?? color.onSurface,
        outline: color.outline ?? color.onBackground.withOpacity(0.5),
        outlineVariant: color.outlineVariant ?? color.onBackground.withOpacity(0.3),
        shadow: color.shadow ?? Colors.black.withOpacity(0.2),
        scrim: color.scrim ?? Colors.black.withOpacity(0.4),
        inverseSurface: color.inverseSurface ?? (color.brightness == Brightness.light ? Colors.black : Colors.white),
        onInverseSurface:
            color.onInverseSurface ?? (color.brightness == Brightness.light ? Colors.white : Colors.black),
        inversePrimary: color.inversePrimary ?? color.primary.withOpacity(0.8),
        surfaceTint: color.surfaceTint ?? color.primary.withOpacity(0.05),
      );
}
