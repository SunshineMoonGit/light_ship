import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
import 'package:light_ship/features/presentation/views/profile/screens/edit/other_profile_edit_screen.dart';
import 'package:light_ship/shared/services/items/modal_item_model.dart';
import 'package:light_ship/shared/widgets/modal/base/base_modal_content.dart';

class ProfileMoreModalContent extends ConsumerWidget {
  const ProfileMoreModalContent(
    this.userData, {
    super.key,
  });

  final OtherUserInfoEntity userData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool modalToggle = ref.watch(modalProvider);
    List<ModalItemModel> items = [
      ModalItemModel(
        icon: AppSvg.cardRegister,
        title: '수정',
        onTap: () {
          context.push(OtherProfileEditScreen.route, extra: userData);
        },
      ),
      ModalItemModel(
        icon: AppSvg.gallery,
        title: '삭제',
        onTap: () async {
          // await ref.read(imageMangerProvider.notifier).getImage(GetImageMethodType.gallery, iType);
        },
      ),
    ];

    // ModalItemModel.buildItemList(items, ref);

    return BaseModalContent(ModalItemModel.buildItemList(items, ref));
  }
}
