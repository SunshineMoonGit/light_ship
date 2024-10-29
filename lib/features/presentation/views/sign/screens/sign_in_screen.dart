import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:light_ship/features/presentation/views/sign/widgets/sign_in_logo_widget.dart';
import 'package:light_ship/features/presentation/views/sign/widgets/sign_in_social_widget.dart';
import 'package:light_ship/features/presentation/views/core/layout/base_layout.dart';

//! Apple Sign In >> 앱 출시 전 만들기
class SignInScreen extends StatelessWidget {
  static String get route => '/sign_in';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(child: SignInLogoWidget()),
            SignInSocialWidget(),
          ],
        ),
      ),
    );
  }
}
