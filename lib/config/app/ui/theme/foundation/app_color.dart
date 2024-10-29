// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../app_theme.dart';

class AppColor {
  const AppColor({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    this.primaryContainer,
    this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    this.secondaryContainer,
    this.onSecondaryContainer,
    this.tertiary,
    this.onTertiary,
    this.tertiaryContainer,
    this.onTertiaryContainer,
    required this.error,
    required this.onError,
    this.errorContainer,
    this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    this.surfaceVariant,
    this.onSurfaceVariant,
    this.outline,
    this.outlineVariant,
    this.shadow,
    this.scrim,
    this.inverseSurface,
    this.onInverseSurface,
    this.inversePrimary,
    this.surfaceTint,
  });

  final Brightness brightness;

  // Primary
  final Color primary;
  final Color onPrimary;
  final Color? primaryContainer;
  final Color? onPrimaryContainer;

  // Secondary
  final Color secondary;
  final Color onSecondary;
  final Color? secondaryContainer;
  final Color? onSecondaryContainer;

  // Tertiary
  final Color? tertiary;
  final Color? onTertiary;
  final Color? tertiaryContainer;
  final Color? onTertiaryContainer;

  // Error
  final Color error;
  final Color onError;
  final Color? errorContainer;
  final Color? onErrorContainer;

  // Background
  final Color background;
  final Color onBackground;

  // Surface
  final Color surface;
  final Color onSurface;
  final Color? surfaceVariant;
  final Color? onSurfaceVariant;

  // Outline
  final Color? outline;
  final Color? outlineVariant;

  // Other
  final Color? shadow;
  final Color? scrim;
  final Color? inverseSurface;
  final Color? onInverseSurface;
  final Color? inversePrimary;
  final Color? surfaceTint;
}
