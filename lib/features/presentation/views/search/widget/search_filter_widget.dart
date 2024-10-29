import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/providers/search/search_filter_provider.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SearchFilterWidget extends ConsumerWidget {
  const SearchFilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<String> filters = ['전체', '이름', '회사'];

    final int filterIndex = ref.watch(searchFilterProvider);

    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          filters.length,
          (index) {
            return Expanded(
              child: GestureDetector(
                onTap: () => ref.read(searchFilterProvider.notifier).onTap(index),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            filterIndex == index ? BorderSide(color: context.colorScheme.primary) : BorderSide.none),
                  ),
                  child: BaseText(filters[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
