import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/button/custom_bottom_button.dart';

class SettingProfileSaveButtonWidget extends ConsumerWidget {
  const SettingProfileSaveButtonWidget({
    super.key,
    required this.imagePath,
    required this.manager,
  });

  final String? imagePath;
  final TextControllerManager manager;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: CustomBottomButton.save(onTap: () {
        AppMethod(ref).auth.update(imagePath, manager);
      }),
    );
  }
}
