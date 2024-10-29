import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/services/app_method/auth_method.dart';
import 'package:light_ship/shared/services/app_method/theme_method.dart';
import 'package:light_ship/shared/services/app_method/wallet_method.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';

class AppMethod {
  final WidgetRef ref;

  AppMethod(this.ref);

  AuthMethod get auth => AuthMethod(ref);
  CustomSettingMethod get custom => CustomSettingMethod(ref);
  WalletMethod get wallet => WalletMethod(ref);

  Future<void> init() async {
    try {
      final String deviceLocale = Platform.localeName.substring(0, 2);

      // 앱 세팅 불러오기 + 적용
      await ref.customSetting.init(deviceLocale);

      await ref.keySetting.init();

      // 유저 정보 확인
      await ref.myInfo.init();

      // wallet init
      await ref.wallet.init();
    } catch (e) {
      // 에러 처리
      ssPrint('init error: $e', 'app_method');
      rethrow; // 에러를 다시 던져서 상위에서 처리할 수 있게 함
    }
  }

  void modalShow() {
    ref.read(modalProvider.notifier).show();
  }

  void modalHide() {
    ref.read(modalProvider.notifier).hide();
  }
}

enum SaveType {
  local,
  network,
}
