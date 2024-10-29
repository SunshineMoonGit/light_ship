import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/auth/my_user_info_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/provider/auth_state_provider.dart';
import 'package:light_ship/shared/provider/page_index_provider.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';

class AuthMethod {
  final WidgetRef ref;

  AuthMethod(this.ref);

  Future<void> signIn(LoginType type) async {
    final MyUserInfoEntity myInfo = await ref.myInfo.signIn(type);

    ref.keySetting.update(KeySettingEntity.fromMyUserInfoEntity(myInfo));

    ref.authState.check();
  }

  Future<void> signOut() async {
    // myInfo 초기화
    await ref.myInfo.signOut();
    // local storage 초기화
    ref.keySetting.signOut();
    // 페이지 인덱스 초기화
    ref.read(pageIndexProvider.notifier).change(0);
    ref.read(authStateProvider.notifier).check();
  }

  Future<void> signInWithApple() async {
    ssPrint('Apple Login', 'AuthMethod');
  }

  Future<void> update(String? imagePath, TextControllerManager manager) async {
    try {
      final MyUserInfoEntity myInfo = ref.read(myUserInfoProvider);

      final MyUserInfoEntity updateData = myInfo.fromController(imagePath, manager);

      // update
      await ref.read(myUserInfoProvider.notifier).update(updateData);
    } catch (e) {
      ssPrint(e.toString(), 'auth_update');
    }
  }
}
