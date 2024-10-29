import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/button/custom_button_with_title.dart';

class CustomBottomButton extends ConsumerWidget {
  const CustomBottomButton({
    super.key,
    required this.title,
    this.onTap,
    this.backgroundColor,
  });

  final String title;
  final void Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: CustomButtonWithTitle(
        backgroundColor: backgroundColor ?? context.colorScheme.surface,
        title: title,
        textColor: context.colorScheme.onSurface,
        onTap: onTap,
      ),
    );
  }

  static CustomBottomButton save({required VoidCallback onTap}) {
    return CustomBottomButton(
      title: AppString.save,
      onTap: onTap,
    );
  }

  static CustomBottomButton custom({required String title, VoidCallback? onTap}) {
    return CustomBottomButton(
      title: title,
      onTap: onTap,
    );
  }
}
