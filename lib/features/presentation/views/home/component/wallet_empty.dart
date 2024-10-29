import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/provider/page_index_provider.dart';
import 'package:light_ship/shared/widgets/container/base_container.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class WalletEmpty extends ConsumerWidget {
  const WalletEmpty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BaseText('저장한 명함이 없습니다.'),
          Dimensions.verticalSpaceLarge,
          GestureDetector(
            onTap: () => ref.read(pageIndexProvider.notifier).change(2),
            child: const BaseContainer(
              padding: Dimensions.paddingAll,
              child: BaseText('Add Card'),
            ),
          ),
        ],
      ),
    );
  }
}
