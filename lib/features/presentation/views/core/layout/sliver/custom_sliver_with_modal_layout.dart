import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/shared/widgets/modal/base/base_modal_content.dart';
import 'package:light_ship/shared/widgets/modal/base/base_modal_barrier.dart';

class CustomSliverWithModalLayout extends ConsumerWidget {
  const CustomSliverWithModalLayout({
    super.key,
    this.scaffoldAppBar,
    this.sliverAppBar,
    this.slivers,
    this.background,
    this.safeAreaTop = false,
    this.safeAreaBottom = false,
    this.physics = const ClampingScrollPhysics(),
    this.bottomNavigationBar,
    this.padding,
    required this.modal,
  });

  final PreferredSizeWidget? scaffoldAppBar;
  final Widget? sliverAppBar;
  final List<Widget>? slivers;
  final Color? background;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final ScrollPhysics? physics;
  final Widget? bottomNavigationBar;
  final EdgeInsets? padding;
  final Widget modal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool modalToggle = ref.watch(modalProvider);

    return Stack(
      children: [
        CustomSliverLayout(
          scaffoldAppBar: scaffoldAppBar,
          sliverAppBar: sliverAppBar,
          safeAreaTop: safeAreaTop,
          safeAreaBottom: safeAreaBottom,
          background: background,
          bottomNavigationBar: bottomNavigationBar,
          slivers: slivers,
          physics: physics,
          padding: padding,
        ),
        if (modalToggle) BaseModalBarrier(showModal: modalToggle),
        BaseModalContent(modal),
      ],
    );
  }
}
