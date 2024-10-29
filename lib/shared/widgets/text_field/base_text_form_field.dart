import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class BaseTextFormField extends ConsumerWidget {
  const BaseTextFormField({
    super.key,
    required this.manager,
    this.showTitle = false,
    this.hintText = '',
    this.obscureText = false,
    this.validator,
    this.inputFormatters,
    required this.inputDecoration,
    this.onChanged,
  });

  // 타이틀
  final bool showTitle;

  // 힌트 텍스트
  final String? hintText;

  // 비밀번호
  final bool obscureText;

  // 텍스트 콘트롤러
  final TextControllerManager manager;

  // 검증
  final String? Function(String?)? validator;
  // 포맷
  final List<TextInputFormatter>? inputFormatters;

  // onChanged
  final Function(String)? onChanged;
  // 스타일
  final InputDecoration inputDecoration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: manager.controllers.toWidget(
        context: context,
        itemBuilder: (context, index, item) {
          final TextController baseController = manager.controllers[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showTitle)
                BaseText(
                  baseController.name,
                  style: context.textTheme.titleLarge!,
                  color: context.colorScheme.onSurface,
                ),
              if (showTitle) Dimensions.verticalSpaceSmall,
              TextFormField(
                style: context.textTheme.bodyMedium!.copyWith(color: context.colorScheme.onSurface),
                onChanged: onChanged,
                inputFormatters: inputFormatters,
                validator: validator,
                controller: baseController.controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: obscureText,
                decoration: inputDecoration.copyWith(
                  hintText: baseController.name,
                  prefixIcon: Padding(
                    padding: Dimensions.paddingHorizontal,
                    child: BaseSvg(item: baseController.name.stringToSvg()),
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => Dimensions.verticalSpaceLarge,
      ),
    );
  }
}


    // List.generate(
      //   manager.controllers.length,
      //   (index) {
      //     final BaseController baseController = manager.controllers[index];

      //     return Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         // if (showTitle)
      //         //   Padding(
      //         //     padding: Dimensions.paddingVertical,
      //         //     child: BaseText(
      //         //        baseController.name,
      //         //       style: context.textTheme.titleLarge!,
      //         //       color: context.colorScheme.onSurface,
      //         //     ),
      //         //   ),
      //         if (showTitle)
      //           BaseText(
      //             baseController.name,
      //             style: context.textTheme.titleLarge!,
      //             color: context.colorScheme.onSurface,
      //           ),
      //         if (showTitle) Dimensions.verticalSpaceMedium,
      //         TextFormField(
      //           style: context.textTheme.bodyMedium!.copyWith(color: context.colorScheme.onSurface),
      //           onChanged: onChanged,
      //           inputFormatters: inputFormatters,
      //           validator: validator,
      //           controller: baseController.controller,
      //           autovalidateMode: AutovalidateMode.onUserInteraction,
      //           obscureText: obscureText,
      //           decoration: inputDecoration.copyWith(
      //             hintText: baseController.name,
      //             prefixIcon: Padding(
      //               padding: Dimensions.paddingHorizontal,
      //               child: BaseSvg(item: baseController.name),
      //             ),
      //           ),
      //         ),
      //       ],
      //     );