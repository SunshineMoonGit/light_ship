import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/features/presentation/providers/setting/key_setting_provider.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';

class AuthStateProviderNotifier extends Notifier<AuthState> {
  // String get storageUid => ref.watch(keySettingProvider).uid;
  // MyUserInfoEntity get myInfo => ref.watch(myUserInfoProvider);

  @override
  AuthState build() {
    return AuthState.initial;
  }

  AuthState refresh() {
    final String? storageUid = ref.read(keySettingProvider).uid;
    final MyUserInfoEntity myInfo = ref.read(myUserInfoProvider);

    if (storageUid.isNull() || myInfo.uid.isNull()) {
      return AuthState.unauthenticated;
    } else if (storageUid != myInfo.uid) {
      return AuthState.unauthenticated;
    } else if (myInfo.checkDetail()) {
      return AuthState.authenticatedButIncomplete;
    } else {
      return AuthState.authenticated;
    }
  }

  Future<void> check() async {
    state = refresh();

    ssPrint('AuthState $state!!', 'AuthStateProvider');
  }

  void setAuthState(AuthState status) {
    state = status;
  }
}

final authStateProvider = NotifierProvider<AuthStateProviderNotifier, AuthState>(() {
  return AuthStateProviderNotifier();
});
