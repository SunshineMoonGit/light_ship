import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/app/ui/theme/custom_system_ui.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/items/app_bar_action_item_model.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar(
      {super.key,
      this.title,
      this.centerTitle = true,
      this.actions,
      this.background,
      this.dropBox,
      this.backSpace = true,
      this.elevation = false});

  final String? title;
  final bool? centerTitle;
  final List<AppBarActionItemModel>? actions;
  final Widget? dropBox;
  final Color? background;
  final bool backSpace;
  final bool elevation;

  @override
  Widget build(BuildContext context) {
    final Color standardBackground = context.colorScheme.background;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.tertiary,
            width: elevation ? 1.3 : 0,
          ),
        ),
      ),
      child: AppBar(
        leading: backSpace ? _leading(context) : Container(),
        centerTitle: centerTitle,
        title: _buildTitle(title: title, context: context),
        systemOverlayStyle: CustomSystemUI.getSystemUIOverlayStyle(background ?? standardBackground),
        backgroundColor: background ?? standardBackground,
        surfaceTintColor: Colors.transparent,
        actions: _buildActions(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget _leading(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      // iconSize: 100,
      icon: const BaseSvg(item: AppSvg.arrowLeft, size: Dimensions.svgMedium),
    );
  }

  List<Widget>? _buildActions() {
    if (actions == null) return null;

    return actions!.asMap().entries.map((entry) {
      final index = entry.key;
      final action = entry.value;
      final isLastItem = index == actions!.length - 1;

      return Padding(
        padding: EdgeInsets.only(right: isLastItem ? Dimensions.screenSizeMedium : Dimensions.screenSizeSmall),
        child: GestureDetector(
          onTap: action.onTap,
          child: action.icon,
        ),
      );
    }).toList();
  }

  Widget? _buildTitle({required String? title, required BuildContext context}) {
    if (title == null) {
      return null;
    }
    return Padding(
      padding: Dimensions.paddingHorizontal,
      child: BaseText.headlineLarge(title, context),
    );
  }
}
