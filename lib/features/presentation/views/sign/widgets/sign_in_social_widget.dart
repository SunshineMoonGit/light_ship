import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/views/sign/widgets/zcommon/_component/sign_in_button.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';

class SignInSocialWidget extends ConsumerWidget {
  const SignInSocialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: Dimensions.paddingHorizontalMedium,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SignInButton(
            svg: AppSvg.apple,
            onTap: () => AppMethod(ref).auth.signIn(LoginType.apple),
          ),
          Dimensions.verticalSpaceMedium,
          SignInButton(
            svg: AppSvg.google,
            hasColor: true,
            onTap: () => AppMethod(ref).auth.signIn(LoginType.google),
          ),
          Dimensions.verticalSpaceMedium,
        ],
      ),
    );
  }
}
