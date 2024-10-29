import 'package:flutter/material.dart';
import 'package:light_ship/features/presentation/views/core/layout/base_layout.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SplashScreen extends StatelessWidget {
  static String get route => '/splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Center(
        child: BaseText.logo(context),
      ),
    );
  }
}
