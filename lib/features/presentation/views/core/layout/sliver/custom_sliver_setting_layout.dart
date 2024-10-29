import 'package:flutter/material.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_app_bar_widget.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_bottom_button_widget.dart';

class CustomSliverSettingLayout extends StatelessWidget {
  const CustomSliverSettingLayout({
    super.key,
    this.appBarTitle = '',
    required this.slivers,
    this.bottomOnTap,
    this.bottomTitle,
    this.scaffoldAppBar,
    this.sliverAppBar,
    this.background,
    this.safeAreaTop = false,
    this.safeAreaBottom = false,
    this.physics = const ClampingScrollPhysics(),
    this.bottomNavigationBar,
    this.padding,
  });

  final PreferredSizeWidget? scaffoldAppBar;
  final Widget? sliverAppBar;
  final Color? background;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final ScrollPhysics? physics;
  final Widget? bottomNavigationBar;
  final EdgeInsets? padding;

  final List<Widget> slivers;
  final String appBarTitle;
  final VoidCallback? bottomOnTap;
  final String? bottomTitle;

  @override
  Widget build(BuildContext context) {
    return CustomSliverLayout(
      sliverAppBar: sliverAppBar,
      safeAreaTop: safeAreaTop,
      background: background,
      physics: physics,
      padding: padding,
      scaffoldAppBar: SettingAppBarWidget(title: appBarTitle),
      safeAreaBottom: true,
      bottomNavigationBar: SettingBottomButtonWidget(
        bottomTitle: bottomTitle,
        bottomOnTap: bottomOnTap,
      ),
      slivers: [
        PopScope(
          canPop: true,
          // onPopInvoked: (didPop) async {
          //   if (didPop) return;
          //   if (!context.mounted) return;

          //   final bool? shouldPop = await BaseDialog.showExitConfirmation(context);

          //   print(shouldPop);
          // },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: slivers,
          ),
        ),
      ],
    );
  }
}
