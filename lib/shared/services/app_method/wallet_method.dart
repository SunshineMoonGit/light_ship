import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/wallet/wallet_provider.dart';
import 'package:light_ship/shared/extensions/ref_extensions.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/services/log/ss_print.dart';
import 'package:uuid/uuid.dart';

// wallet
// network(firebase에 저장)
// network -> local 데이터 이동
// local 에서 불러오기

class WalletMethod {
  final WidgetRef ref;

  WalletMethod(this.ref);

  Future<void> add(String? imagePath, TextControllerManager manager) async {
    try {
      // uid 생성
      final String publicUid = const Uuid().v4();

      // 데이터 만들기
      final PublicUserInfoEntity pData = PublicUserInfoEntity.fromController(imagePath, publicUid, manager);

      final OtherUserInfoEntity newData = OtherUserInfoEntity(publicInfo: pData);

      // Add - network
      await ref.read(walletProvider.notifier).add(newData);
    } catch (e) {
      ssPrint(e.toString(), 'WalletMethod_add');
    }
  }

  Future<void> delete(String uid) async {
    // await ref.read(walletProvider.notifier).delete(uid);
  }

  Future<void> edit(
      OtherUserInfoEntity data, ImageControllerManager imageManager, TextControllerManager controllerManager) async {
    // 데이터 만들기
    final OtherUserInfoEntity pData = data.copyWith.publicInfo(
      cardImage: imageManager.card,
      profileImage: imageManager.profile,
      name: controllerManager.name,
      company: controllerManager.company,
      email: controllerManager.email,
      team: controllerManager.team,
      fax: controllerManager.fax,
      phone: controllerManager.phone,
    );

    await ref.wallet.update(pData);
  }

  Future<void> update(OtherUserInfoEntity data) async {
    await ref.wallet.update(data);
  }
}
