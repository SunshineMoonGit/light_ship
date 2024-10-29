import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/features/presentation/views/core/root/root_screen.dart';

class ProfileActionButton {
  final String title;
  final Function() onTap;

  ProfileActionButton({
    required this.title,
    required this.onTap,
  });

  static ProfileActionButton edit(BuildContext context) {
    return ProfileActionButton(
      title: 'profile_edit',
      onTap: () => context.push(RootScreen.route, extra: false),
    );
  }

  static ProfileActionButton share(BuildContext context) {
    return ProfileActionButton(
      title: '공유하기',
      onTap: () {},
      // onTap: () => context.push(QrCodeViewerScreen.route, extra: QrCodeService.toQrCode(userData)),
    );
  }

  static ProfileActionButton view(BuildContext context) {
    return ProfileActionButton(
      title: 'view_card',
      onTap: () {},
      // onTap: () => context.push(QrCodeViewerScreen.route, extra: QrCodeService.toQrCode(userData)),
    );
  }
}
