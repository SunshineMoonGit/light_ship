import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/button/custom_bottom_button.dart';

class SettingBottomButtonWidget extends StatelessWidget {
  const SettingBottomButtonWidget({
    super.key,
    required this.bottomOnTap,
    this.bottomTitle,
  });

  final VoidCallback? bottomOnTap;
  final String? bottomTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.paddingAll,
      child: SizedBox(
        // ! 변수 등록
        height: 80,
        child: CustomBottomButton.custom(
          title: bottomTitle ?? AppString.save,
          onTap: bottomOnTap,
        ),
      ),
    );
  }
}
