import 'package:flutter/material.dart';

@immutable
class Dimensions {
  static const double standardCardRatio = 1050 / 650;
  static const double cardRatio = 650 / 1050;

  // Svg Size
  static const double svgSmall = 24;
  static const double svgMedium = svgSmall * 1.3;

  // Widget Size
  static const double homeTopWidgetHeight = 250;
  static const double avatarSize = 80;

  // Screen Size
  static const double screenSizeLarge = screenSizeMedium * 2;
  static const double screenSizeMedium = screenSizeTiny * 3;
  static const double screenSizeSmall = screenSizeTiny * 2;
  static const double screenSizeTiny = 8;

  // BorderRadius
  static double borderRadiusLarge = 24;
  static double borderRadiusMedium = 16;
  static double borderRadiusSmall = 8;

  // Border Width
  static double borderWith = 3;

  // Padding
  static const paddingAll = EdgeInsets.symmetric(horizontal: screenSizeSmall, vertical: screenSizeSmall);

  static const paddingHorizontalMedium = EdgeInsets.symmetric(horizontal: screenSizeMedium);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: screenSizeSmall);
  static const paddingVertical = EdgeInsets.symmetric(vertical: screenSizeSmall);
  static const paddingVerticalSmall = EdgeInsets.symmetric(vertical: screenSizeTiny);

  // Text font size
  static const double textFontSizeLarge = 24;
  static const double textFontSizeMedium = 20;
  static const double textFontSizeSmall = 16;

  static const verticalSpaceLarge = SizedBox(height: 25);
  static const verticalSpaceMedium = SizedBox(height: 16);
  static const verticalSpaceSmall = SizedBox(height: 8);
  static const horizontalSpaceLarge = SizedBox(width: 25);
  static const horizontalSpaceMedium = SizedBox(width: 16);
  static const horizontalSpaceSmall = SizedBox(width: 8);
  static const verticalSpaceKToolbar = SizedBox(height: kToolbarHeight);

  static const sliverVerticalSpaceLarge = SliverToBoxAdapter(child: verticalSpaceLarge);
  static const sliverVerticalSpaceMedium = SliverToBoxAdapter(child: verticalSpaceMedium);
  static const sliverVerticalSpaceSmall = SliverToBoxAdapter(child: verticalSpaceSmall);
  static const sliverHorizontalSpaceLarge = SliverToBoxAdapter(child: horizontalSpaceLarge);
  static const sliverHorizontalSpaceMedium = SliverToBoxAdapter(child: horizontalSpaceMedium);
  static const sliverHorizontalSpaceSmall = SliverToBoxAdapter(child: horizontalSpaceSmall);
  static const sliverKToolbarHeight = SliverToBoxAdapter(child: verticalSpaceKToolbar);
}
