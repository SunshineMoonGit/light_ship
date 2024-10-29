import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/text_field/base_text_form_field.dart';

class CustomSearchField extends ConsumerWidget {
  const CustomSearchField({
    super.key,
    this.hintText,
    required this.manager,
    this.onChanged,
  });

  // 힌트
  final String? hintText;
  // 텍스트 콘트롤러
  final TextControllerManager manager;
  // 변경 콜백
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseTextFormField(
      manager: manager,
      inputDecoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimensions.borderRadiusLarge),
        ),
        filled: true,
        fillColor: context.colorScheme.surface,
      ),
    );
  }
}
