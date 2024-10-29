import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_layout.dart';
import 'package:light_ship/features/presentation/views/search/widget/search_filter_widget.dart';
import 'package:light_ship/features/presentation/views/search/widget/search_input_field_widget.dart';
import 'package:light_ship/shared/provider/text_manager_provider.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/nav_bar/base_nav_bar.dart';

class SearchScreen extends ConsumerWidget {
  static String get route => '/search';

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextControllerManager manager = ref.watch(controllerManagerProvider(ControllerType.search));

    return CustomSliverLayout(
      bottomNavigationBar: const BaseNavBar(),
      slivers: [
        Dimensions.verticalSpaceKToolbar,
        // 검색창
        SearchInputFieldWidget(manager: manager),

        // 검색 필터
        const SearchFilterWidget(),

        // 검색 결과
        // const SearchResultWidget(),
      ],
    );
  }
}
