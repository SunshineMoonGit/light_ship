import 'package:flutter/widgets.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/text/custom_large_text.dart';

class MyProfileUserTypeWidget extends StatelessWidget {
  const MyProfileUserTypeWidget({
    super.key,
    required this.userType,
  });

  final String userType;

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: BaseContainer(
        padding: Dimensions.paddingAll,
        child: Center(
          child: CustomLargeText('Get Premium Tier'),
        ),
      ),
    );
  }
}
