import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SignInLogoWidget extends ConsumerWidget {
  const SignInLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: BaseText(
        AppString.appName,
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w900,
          fontSize: 50,
        ),
        color: context.colorScheme.onBackground,
      ),
    );
  }
}
