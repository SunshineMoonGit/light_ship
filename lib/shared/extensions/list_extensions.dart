import 'package:flutter/material.dart';

extension ListExtension on List {
  List<Widget> toWidget({
    required Widget Function(BuildContext context, int index, dynamic item) itemBuilder,
    required BuildContext context,
    Widget Function(BuildContext context, int index)? separatorBuilder,
  }) {
    return List.generate(length * 2 - 1, (index) {
      if (index % 2 == 0) {
        final int itemIndex = index ~/ 2;
        return itemBuilder(context, itemIndex, this[itemIndex]);
      } else {
        final int separatorIndex = index ~/ 2;
        return separatorBuilder?.call(context, separatorIndex) ?? Container();
      }
    });
  }

  // List<Widget> toSliver() {
  //   return List.generate(length * 2 - 1, (index) {
  //     if (index % 2 == 0) {
  //       final int itemIndex = index ~/ 2;
  //       return this[itemIndex];
  //     } else {
  //       return Dimensions.sliverVerticalSpaceMedium;
  //     }
  //   });
  // }
}

extension ListSpacing on List<Widget> {
  List<Widget> addSpaceBetween(Widget spacer, {bool startSkip = false, bool endSkip = false}) {
    if (isEmpty) return this; // 리스트가 비어 있으면 그대로 반환

    final spacedList = <Widget>[];

    // 시작에 spacer 추가 (startSkip이 false인 경우)
    if (!startSkip) {
      spacedList.add(spacer);
    }

    for (int i = 0; i < length; i++) {
      spacedList.add(this[i]);
      // 마지막 요소가 아니거나 endSkip이 false인 경우에만 spacer 추가
      if (i < length - 1 || !endSkip) {
        spacedList.add(spacer);
      }
    }

    return spacedList;
  }
}
