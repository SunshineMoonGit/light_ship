import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/theme_enums.dart';
import 'package:light_ship/config/app/ui/theme/app_theme.dart';
import 'package:light_ship/config/router/basic_router.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_provider.dart';
import 'package:light_ship/generated/l10n.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await AppMethod(ref).init();
      await ref.authState.check();
    });
  }

  @override
  Widget build(BuildContext context) {
    final CustomSettingEntity customSetting = ref.watch(customSettingProvider);

    final String language = customSetting.language == LanguageType.none ? 'ko' : 'ko';

    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ko'),
      ],
      locale: Locale(language),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.byType(customSetting.theme),
      title: 'card app',
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
