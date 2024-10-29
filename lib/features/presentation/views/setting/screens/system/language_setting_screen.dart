import 'package:flutter/material.dart';
import 'package:light_ship/config/var/setting_config.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_setting_layout.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_item_widget.dart';

class LanguageSettingScreen extends StatelessWidget {
  static String get route => '/setting/language';

  const LanguageSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverSettingLayout(
      slivers: [
        SettingItemWidget(
          settings: SettingConfig.language(),
        ),
      ],
    );
  }
}
