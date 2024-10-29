import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/views/home/home_screen.dart';
import 'package:light_ship/features/presentation/views/profile/screens/my_profile_screen.dart';
import 'package:light_ship/features/presentation/views/register/screens/other_register_screen.dart';
import 'package:light_ship/features/presentation/views/search/screens/search_screen.dart';
import 'package:light_ship/shared/provider/page_index_provider.dart';

class RootScreen extends ConsumerWidget {
  static String get route => '/';

  const RootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int pageIndex = ref.watch(pageIndexProvider);

    return _getPage(pageIndex);
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SearchScreen();
      case 2:
        return const OtherRegisterScreen();
      case 3:
        return const MyProfileScreen();
      default:
        return const HomeScreen();
    }
  }
}
