import 'package:flutter/material.dart';
import 'package:light_ship/shared/widgets/app_bar/base_app_bar.dart';

class SettingAppBarWidget extends BaseAppBar {
  const SettingAppBarWidget({
    super.key,
    required this.title,
  });

  @override
  final String title;

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      title: title,
    );
  }
}
