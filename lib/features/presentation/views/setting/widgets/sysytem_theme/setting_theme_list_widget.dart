import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/app/ui/theme/component/base_ui.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_temp_provider.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SettingThemeListWidget extends ConsumerWidget {
  const SettingThemeListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeType selectedType = ref.watch(customSettingTempProvider).theme;
    final List themeList = [ThemeType.light, ThemeType.dark];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: themeList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
        childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
        mainAxisSpacing: Dimensions.screenSizeMedium, //수평 Padding
        crossAxisSpacing: Dimensions.screenSizeSmall, //수직 Padding
      ),
      itemBuilder: (BuildContext context, int index) {
        final bool selected = selectedType == themeList[index];

        // return Text(index.toString());
        return GestureDetector(
          onTap: () => AppMethod(ref).custom.tempTheme(themeList[index]),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BaseUi(context).borderRadius(),
              border: BaseUi(context).border(color: selected ? context.colorScheme.primary : null),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.borderRadiusSmall,
                horizontal: Dimensions.borderRadiusSmall,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BaseUi(context).borderRadius(),
                      ),
                    ),
                  ),
                  BaseText(themeList[index].toString()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
