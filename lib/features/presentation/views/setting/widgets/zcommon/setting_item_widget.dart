import 'package:flutter/material.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/services/items/setting_item_model.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget({
    super.key,
    required this.settings,
    this.lineDivider = false,
    this.onBorder = true,
  });

  final List<SettingItemDetailModel> settings;
  final bool lineDivider;
  final bool onBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settings.toWidget(
        context: context,
        itemBuilder: (context, index, item) {
          return onBorder ? _buildBorderWithItems(item) : _buildItems(item);
        },
        separatorBuilder: (context, index) {
          return lineDivider ? const BaseDivider(padding: Dimensions.paddingVertical) : Dimensions.verticalSpaceMedium;
        },
      ),
    );
  }

  Widget _buildBorderWithItems(SettingItemDetailModel item) {
    return BaseContainer(
      padding: Dimensions.paddingAll,
      child: GestureDetector(
        onTap: item.onTap,
        child: Row(
          children: [
            _buildPrefix(item.prefixIcon),
            _buildTitle(item.title),
            _buildSuffix(item.suffix),
            _buildArrow(item.showArrow),
          ],
        ),
      ),
    );
  }

  Widget _buildItems(SettingItemDetailModel item) {
    return GestureDetector(
      onTap: item.onTap,
      child: Row(
        children: [
          _buildPrefix(item.prefixIcon),
          _buildTitle(item.title),
          _buildSuffix(item.suffix),
          _buildArrow(item.showArrow),
        ],
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Expanded(child: BaseText(title));
  }

  Widget _buildPrefix(String? prefixIcon) {
    if (prefixIcon == null) return const SizedBox();

    return Row(
      children: [
        BaseSvg(item: prefixIcon),
        Dimensions.horizontalSpaceMedium,
      ],
    );
  }

  Widget _buildSuffix(Widget? suffix) {
    if (suffix == null) return const SizedBox();

    return Row(
      children: [
        Dimensions.horizontalSpaceMedium,
        suffix,
      ],
    );
  }

  Widget _buildArrow(bool onArrow) {
    if (onArrow == false) return const SizedBox();

    return const Row(
      children: [
        Dimensions.horizontalSpaceMedium,
        BaseSvg(item: AppSvg.arrowRight),
      ],
    );
  }
}
