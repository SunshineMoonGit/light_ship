import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/features/presentation/views/profile/widget/zcomponent/profile_action_button.dart';
import 'package:light_ship/features/presentation/views/profile/screens/edit/other_profile_edit_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/setting_screen.dart';

class ProfileConfig {
  static List<ProfileActionButton> myButtons(BuildContext context, MyUserInfoEntity userData) {
    return [
      ProfileActionButton(
        title: 'Share',
        onTap: () {},
      ),
      ProfileActionButton(
        title: 'Setting',
        onTap: () => context.push(SettingScreen.route),
      ),
    ];
  }

  static List<ProfileActionButton> otherButtons(BuildContext context, OtherUserInfoEntity userData) {
    return [
      ProfileActionButton(
        title: 'Share',
        onTap: () {},
      ),
      ProfileActionButton(
        title: 'Edit',
        onTap: () => context.push(
          OtherProfileEditScreen.route,
          extra: userData,
        ),
      ),
    ];
  }
}
