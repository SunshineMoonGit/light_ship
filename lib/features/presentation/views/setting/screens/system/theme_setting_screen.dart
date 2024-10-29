import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_setting_layout.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/sysytem_theme/setting_theme_list_widget.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';

class ThemeSettingScreen extends ConsumerWidget {
  static String get route => '/setting/theme';

  const ThemeSettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomSliverSettingLayout(
      appBarTitle: "테마",
      slivers: const [SettingThemeListWidget()],
      bottomTitle: AppString.save,
      bottomOnTap: () => AppMethod(ref).custom.update(),
    );
  }
}
