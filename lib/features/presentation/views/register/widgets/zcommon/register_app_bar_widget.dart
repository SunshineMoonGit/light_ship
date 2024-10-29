import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/shared/services/items/app_bar_action_item_model.dart';
import 'package:light_ship/shared/widgets/app_bar/base_app_bar.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class RegisterAppBarWidget extends BaseAppBar {
  const RegisterAppBarWidget({
    super.key,
    // required this.imagePath,
    // required this.manager,
    required this.title,
    required this.onSave,
  });

  // final String? imagePath;
  // final ControllerManager manager;
  @override
  final String title;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => BaseAppBar(
        backSpace: false,
        title: title,
        centerTitle: false,
        actions: [
          AppBarActionItemModel(
            icon: BaseSvg.actions(item: AppSvg.check),
            onTap: onSave,
          ),
        ],
      ),
    );
  }
}
