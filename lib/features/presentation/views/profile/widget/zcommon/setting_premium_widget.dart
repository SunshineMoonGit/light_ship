import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';
import 'package:light_ship/shared/widgets/text/custom_desc_text.dart';

class SettingPremiumWidget extends StatelessWidget {
  const SettingPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BaseContainer(
        onElevation: true,
        padding: Dimensions.paddingVerticalSmall,
        child: const Column(
          children: [
            BaseText("Normal User"),
            CustomDescText("GET PREMIUM?"),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
