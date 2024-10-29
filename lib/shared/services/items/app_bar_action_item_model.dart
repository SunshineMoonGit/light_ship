import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class AppBarActionItemModel {
  final void Function() onTap;
  final String? title;
  final TextStyle? textStyle;
  final Widget? icon;

  AppBarActionItemModel({
    this.icon,
    required this.onTap,
    this.textStyle,
    this.title,
  });

  static List<Widget> text(List<AppBarActionItemModel> items, BuildContext context) {
    return items.toWidget(
      itemBuilder: (context, index, item) => GestureDetector(
        onTap: item.onTap,
        child: BaseText(
          '${item.title}',
          style: item.textStyle!,
        ),
      ),
      separatorBuilder: (context, index) => Dimensions.horizontalSpaceSmall,
      context: context,
    );
  }

  static List<AppBarActionItemModel> otherProfile(WidgetRef ref, OtherUserInfoEntity userData) {
    return [
      AppBarActionItemModel(
        icon: BaseSvg.actions(
          item: userData.isFavorite ? AppSvg.heart : AppSvg.heart.bold(),
          color: userData.isFavorite ? null : Colors.red,
        ),
        onTap: () => AppMethod(ref).wallet.update(userData),
      ),
    ];
  }
}
