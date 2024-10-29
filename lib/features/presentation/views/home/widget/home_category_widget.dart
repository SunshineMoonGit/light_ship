import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:light_ship/shared/widgets/app_bar/base_sliver_app_bar.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String?> categories = ['All', 'friends', 'business', 'home', 'alsdkjqw', null];

    return BaseSliverAppBar(
      flexibleSpace: Container(
        alignment: Alignment.centerLeft,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0 || index == categories.length + 1) {
              return Dimensions.horizontalSpaceSmall;
            }

            return _buildCategoryItem(categories[index - 1], context);
          },
          separatorBuilder: (context, index) => Dimensions.horizontalSpaceSmall,
          itemCount: categories.length + 2,
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String? category, BuildContext context) {
    return BaseContainer(
      borderRadius: Dimensions.borderRadiusLarge,
      padding: Dimensions.paddingHorizontal,
      child: Center(
        child: category == null
            ? GestureDetector(
                onTap: () => ssPrint('add_category', 'home_category_widget'),
                child: const BaseSvg(item: AppSvg.addCircle),
              )
            : GestureDetector(
                onTap: () => ssPrint(category, 'home_category_widget'),
                child: BaseText.bodyMedium(category, context),
              ),
      ),
    );
  }
}
