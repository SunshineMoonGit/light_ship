import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/items/nav_bar_item_model.dart';

class NavBarConfig {
  static List<NavBarItemModel> items(WidgetRef ref) {
    return [
      NavBarItemModel(
        unSelectedIcon: AppSvg.homeRoundUnselected,
        selectedIcon: AppSvg.homeRoundSelected.bold(),
      ),
      NavBarItemModel(
        unSelectedIcon: AppSvg.search,
        selectedIcon: AppSvg.search.bold(),
      ),
      NavBarItemModel(
        unSelectedIcon: AppSvg.addSquare,
        selectedIcon: AppSvg.addSquare.bold(),
      ),

      //! 프로필 이미지 넣어야해서 REF쓰는거임
      NavBarItemModel(
        unSelectedIcon: AppSvg.profile,
        selectedIcon: AppSvg.profile,
      ),
    ];
  }
}
