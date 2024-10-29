import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/items/public_extra_item.dart';
import 'package:light_ship/shared/widgets/button/base_button.dart';
import 'package:light_ship/shared/widgets/container/custom_container_with_title.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class ProfileExtraUrlsWidget extends StatelessWidget {
  const ProfileExtraUrlsWidget({super.key, required this.userData});

  final PublicUserInfoEntity userData;

  @override
  Widget build(BuildContext context) {
    final List<PublicExtraItem> extras = userData.extra
        .map(
          (e) => PublicExtraItem(url: e),
        )
        .toList();

    return CustomContainerWithTitle(
      title: 'Extra Urls',
      hideContainer: true,
      child: userData.extra.isEmpty
          ? Container()
          : GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // 그리드 자체의 스크롤을 비활성화
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
                mainAxisSpacing: Dimensions.screenSizeMedium, //수평 Padding
                crossAxisSpacing: Dimensions.screenSizeSmall, //수직 Padding
              ),
              itemCount: extras.length,
              itemBuilder: (context, index) => BaseButton(
                child: BaseSvg.platform(item: extras[index].svg, hasColor: true),
                onTap: () {},
              ),
            ),
    );
  }
}
