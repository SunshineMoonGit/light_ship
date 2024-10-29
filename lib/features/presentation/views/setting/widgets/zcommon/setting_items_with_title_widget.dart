import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_item_widget.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/items/setting_item_model.dart';
import 'package:light_ship/shared/widgets/container/custom_container_with_title.dart';

class SettingItemsWithTitleWidget extends StatelessWidget {
  const SettingItemsWithTitleWidget({
    super.key,
    required this.items,
  });

  final SettingItemModel items;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWithTitle(
      background: context.colorScheme.background,
      title: items.category,
      child: SettingItemWidget(
        settings: items.settings,
        onBorder: false,
        lineDivider: true,
      ),
    );
  }
}
//! https://uibowl.io/name/%ED%95%98%EB%A3%A8%EC%BD%A9 setting
// category

// row - (svg, title, desc, onTap).list
