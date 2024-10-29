import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/text_field/base_text_form_field.dart';

class CustomInfoField extends ConsumerWidget {
  const CustomInfoField({
    super.key,
    required this.manager,
    this.titleToggle = true,
  });

  // 콘트롤러
  final TextControllerManager manager;
  final bool titleToggle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseTextFormField(
      showTitle: true,
      manager: manager,
      inputDecoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: context.colorScheme.surfaceVariant),
          borderRadius: BorderRadius.circular(Dimensions.borderRadiusLarge),
        ),
        filled: true,
        fillColor: context.colorScheme.surface,
      ),
    );
  }
}
