import 'package:flutter/widgets.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/button/custom_button_with_title.dart';

class SettingSignOutButtonWidget extends StatelessWidget {
  const SettingSignOutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomButtonWithTitle(
        title: "SIGN OUT",
        textColor: context.colorScheme.error,
        onTap: () {},
      ),
    );
  }
}
