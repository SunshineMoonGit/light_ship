import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/var/nav_bar_config.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/provider/page_index_provider.dart';
import 'package:light_ship/shared/services/items/nav_bar_item_model.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class BaseNavBar extends ConsumerWidget {
  const BaseNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<NavBarItemModel> items = NavBarConfig.items(ref);
    final int pageIndex = ref.watch(pageIndexProvider);
    final double paddingValue = context.sizeWidth / 18;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingValue),
      child: BottomNavigationBar(
        currentIndex: pageIndex,
        // type: BottomNavigationBarType.fixed,
        // elevation: 0,
        // backgroundColor: context.colorScheme.background,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: (value) => ref.read(pageIndexProvider.notifier).change(value),
        items: List.generate(
          items.length,
          (index) {
            final NavBarItemModel item = items[index];
            return BottomNavigationBarItem(
              label: item.unSelectedIcon,
              icon: BaseSvg(item: item.unSelectedIcon),
              activeIcon: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.borderRadiusSmall),
                  color: context.colorScheme.shadow,
                ),
                child: BaseSvg(
                  item: item.selectedIcon,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
