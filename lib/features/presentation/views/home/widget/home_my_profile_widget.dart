import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/views/home/component/wallet_item.dart';
import 'package:light_ship/shared/provider/page_index_provider.dart';

class HomeMyProfileWidget extends ConsumerWidget {
  const HomeMyProfileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyUserInfoEntity myInfo = ref.watch(myUserInfoProvider);

    return WalletItem(
      publicUserData: myInfo.publicInfo,
      onTap: () => ref.read(pageIndexProvider.notifier).change(3),
    );
  }
}
