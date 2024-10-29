import 'package:flutter/material.dart';

class SettingItemModel {
  final String category;

  final List<SettingItemDetailModel> settings;

  SettingItemModel({
    required this.category,
    required this.settings,
  });
}

class SettingItemDetailModel {
  final String title;
  final String? prefixIcon;

  final Widget? suffix;
  final bool showSuffix;
  final VoidCallback? onTap;
  final bool showArrow;
  final bool previousValue;
  final bool currentValue;

  SettingItemDetailModel({
    required this.title,
    this.prefixIcon,
    this.suffix,
    this.onTap,
    this.previousValue = false,
    this.currentValue = false,
    this.showSuffix = true,
    this.showArrow = false,
  });
}
