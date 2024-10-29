import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/providers/notification/notification_provider.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_provider.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_temp_provider.dart';
import 'package:light_ship/features/presentation/providers/setting/key_setting_provider.dart';
import 'package:light_ship/features/presentation/providers/wallet/wallet_provider.dart';
import 'package:light_ship/shared/provider/auth_state_provider.dart';

extension NotificationRef on Ref {
  void notify(String message) {
    read(notificationProvider.notifier).update(message);
  }
}

extension RefExtension on WidgetRef {
  CustomSettingProviderNotifier get customSetting => read(customSettingProvider.notifier);
  CustomSettingTempProviderNotifier get customSettingTemp => read(customSettingTempProvider.notifier);
  KeySettingProviderNotifier get keySetting => read(keySettingProvider.notifier);
  MyUserInfoProviderNotifier get myInfo => read(myUserInfoProvider.notifier);
  WalletProviderNotifier get wallet => read(walletProvider.notifier);

  AuthStateProviderNotifier get authState => read(authStateProvider.notifier);
}
