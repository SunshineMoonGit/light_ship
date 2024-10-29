import 'package:flutter/material.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/widgets/text_field/custom_search_field.dart';

class SearchInputFieldWidget extends StatelessWidget {
  const SearchInputFieldWidget({
    super.key,
    required this.manager,
  });

  final TextControllerManager manager;

  @override
  Widget build(BuildContext context) {
    return CustomSearchField(manager: manager);
  }
}
