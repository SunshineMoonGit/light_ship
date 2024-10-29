import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class ModalItemModel {
  ModalItemModel({
    required this.icon,
    required this.title,
    required this.onTap,
    this.userType = UserType.normal,
  });

  final String icon;
  final String title;
  final void Function() onTap;
  final UserType userType;

  static Widget buildItemList(List<ModalItemModel> items, WidgetRef ref) {
    List<Widget> widgets = [];
    for (int i = 0; i < items.length; i++) {
      widgets.add(
        InkWell(
          onTap: () {
            items[i].onTap();
            ref.read(modalProvider.notifier).hide(); // 아이템 탭 후 모달 닫기
          },
          child: Padding(
            padding: Dimensions.paddingAll,
            child: Row(
              children: [
                BaseSvg(item: items[i].icon),
                Dimensions.horizontalSpaceSmall,
                Text(items[i].title),
              ],
            ),
          ),
        ),
      );
      if (i < items.length - 1) {
        widgets.add(const Divider(height: 1));
      }
    }
    // return widgets;
    return Column(
      children: widgets,
    );
  }

  static Widget transWidget(ModalItemModel item, UserType userType, int index, int length, WidgetRef ref) {
    final bool isPremium = userType.index >= item.userType.index;
    final bool isFirst = index == 0;
    final bool isLast = index == length - 1; // 수정: length - 1

    return Expanded(
      child: Builder(
        builder: (BuildContext context) {
          // context를 여기서 가져옵니다
          return InkWell(
            onTap: () {
              ref.read(modalProvider.notifier).hide();
              item.onTap();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: _getBorderRadius(isFirst, isLast),
                color: Theme.of(context).colorScheme.surface.withOpacity(isPremium ? 1 : 0.5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: Dimensions.paddingHorizontal,
                    child: BaseSvg(
                      item: isPremium ? item.icon : AppSvg.lock,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  if (!isPremium)
                    Padding(
                      padding: Dimensions.paddingHorizontal,
                      child: Text(
                        'For Premium User',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static BorderRadiusGeometry _getBorderRadius(bool isFirst, bool isLast) {
    if (isFirst && isLast) {
      return BorderRadius.circular(Dimensions.borderRadiusMedium);
    } else if (isFirst) {
      return BorderRadius.vertical(top: Radius.circular(Dimensions.borderRadiusMedium));
    } else if (isLast) {
      return BorderRadius.vertical(bottom: Radius.circular(Dimensions.borderRadiusMedium));
    } else {
      return BorderRadius.zero;
    }
  }
}
