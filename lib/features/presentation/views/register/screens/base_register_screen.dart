import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_with_modal_layout.dart';
import 'package:light_ship/features/presentation/views/register/widgets/zcommon/register_app_bar_widget.dart';
import 'package:light_ship/features/presentation/views/register/widgets/zcommon/register_basic_info_widget.dart';
import 'package:light_ship/features/presentation/views/register/widgets/zcommon/register_card_image_widget.dart';
import 'package:light_ship/features/presentation/views/register/widgets/zcommon/register_save_button_widget.dart';
import 'package:light_ship/shared/services/controller_manager/image/image_controller_manager.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

class CustomRegisterLayout extends ConsumerWidget {
  const CustomRegisterLayout({
    super.key,
    this.myUserInfo,
    required this.onSave,
    required this.title,
    this.bottomNavigationBar,
    required this.imageManager,
    required this.controllerManager,
  });

  final MyUserInfoEntity? myUserInfo;
  final Future<void> Function() onSave;
  final String title;
  final Widget? bottomNavigationBar;
  final ImageControllerManager imageManager;
  final TextControllerManager controllerManager;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomSliverWithModalLayout(
      scaffoldAppBar: RegisterAppBarWidget(title: title, onSave: onSave),
      bottomNavigationBar: bottomNavigationBar,
      slivers: [
        // 카드 이미지 등록
        RegisterCardImageWidget(cardImage: imageManager.card),

        Dimensions.verticalSpaceSmall,

        // 기본 정보 입력
        RegisterBasicInfoWidget(manager: controllerManager),

        Dimensions.verticalSpaceLarge,

        // 저장 버튼
        RegisterSaveButtonWidget(onSave: onSave),

        Dimensions.verticalSpaceLarge,
      ],
      modal: Container(),
    );
  }
}
