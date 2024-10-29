import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/core/root/root_screen.dart';
import 'package:light_ship/features/presentation/views/core/splash/splash_screen.dart';
import 'package:light_ship/features/presentation/views/profile/screens/edit/other_profile_edit_screen.dart';
import 'package:light_ship/features/presentation/views/profile/screens/other_profile_screen.dart';
import 'package:light_ship/features/presentation/views/register/screens/my_register_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/account/backup_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/account/profile_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/system/language_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/system/theme_setting_screen.dart';
import 'package:light_ship/features/presentation/views/sign/screens/sign_in_screen.dart';
import 'package:light_ship/shared/provider/auth_state_provider.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';

part 'router_observer.dart';
part 'router_redirect.dart';
part 'router_routes.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final redirectNotifier = RouterNotifier(ref);

  return GoRouter(
    initialLocation: SplashScreen.route,
    routes: _routes,
    redirect: redirectNotifier.redirect,
    refreshListenable: redirectNotifier,
    observers: [GoRouterObserver(ref)],
  );
});
