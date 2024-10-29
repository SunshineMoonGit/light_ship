import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/views/profile/screens/my_profile_screen.dart';
import 'package:light_ship/shared/widgets/text/custom_large_text.dart';

class HomeProfileWidget extends ConsumerWidget {
  const HomeProfileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyUserInfoEntity myInfo = ref.watch(myUserInfoProvider);

    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () => context.push(MyProfileScreen.route),
        // onTap: () {},
        child: Padding(
          padding: Dimensions.paddingHorizontal,
          child: Row(
            children: [
              //! 아바타 svg 색상 변경 필요
              // const BaseAvatar(),

              // Dimensions.horizontalSpaceMedium,

              // 이름
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomLargeText('Hello, ${myInfo.name} 👋'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
