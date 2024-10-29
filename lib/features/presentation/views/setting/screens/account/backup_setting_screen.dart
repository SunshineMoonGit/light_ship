import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:light_ship/config/var/setting_config.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_setting_layout.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_item_widget.dart';

class BackupSettingScreen extends StatelessWidget {
  static String get route => '/setting/backup';
  const BackupSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverSettingLayout(
      appBarTitle: '',
      bottomOnTap: () {},
      slivers: [
        SettingItemWidget(
          settings: SettingConfig.backup(),
        ),
      ],
    );
  }
}
