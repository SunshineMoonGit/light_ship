part of 'basic_router.dart';

List<GoRoute> _routes = [
  // Splash 화면
  GoRoute(
    path: SplashScreen.route,
    builder: (context, state) => const SplashScreen(),
  ),

  // 인증 관련 화면
  GoRoute(
    path: SignInScreen.route,
    builder: (context, state) => const SignInScreen(),
  ),
  GoRoute(
    path: MyRegisterScreen.route,
    builder: (context, state) => const MyRegisterScreen(),
  ),

  // 메인 화면
  GoRoute(
    path: RootScreen.route,
    builder: (context, state) => const RootScreen(),
  ),

  // 세팅 화면
  GoRoute(
    path: SettingScreen.route,
    builder: (context, state) => const SettingScreen(),
  ),

  // 세팅 - Account
  GoRoute(
    path: ProfileSettingScreen.route,
    builder: (context, state) => const ProfileSettingScreen(),
  ),
  GoRoute(
    path: BackupSettingScreen.route,
    builder: (context, state) => const BackupSettingScreen(),
  ),
  // 세팅 - System
  GoRoute(
    path: ThemeSettingScreen.route,
    builder: (context, state) => const ThemeSettingScreen(),
  ),
  GoRoute(
    path: LanguageSettingScreen.route,
    builder: (context, state) => const LanguageSettingScreen(),
  ),
  // 프로필 화면
  GoRoute(
    path: OtherProfileScreen.route,
    builder: (context, state) => OtherProfileScreen(uid: state.extra as String),
  ),
  GoRoute(
    path: OtherProfileEditScreen.route,
    builder: (context, state) => OtherProfileEditScreen(userData: state.extra as OtherUserInfoEntity),
  ),

  // GoRoute(
  //   path: RegisterScreen.route,
  //   builder: (context, state) => const RegisterScreen(),
  // ),
  // GoRoute(
  //   path: MyProfileScreen.route,
  //   builder: (context, state) => const MyProfileScreen(),
  // ),

  // // 활동 관련 화면
  // GoRoute(
  //   path: EditMyProfileScreen.route,
  //   builder: (context, state) => const EditMyProfileScreen(),
  // ),
  // GoRoute(
  //   path: RegisterMyProfileScreen.route,
  //   builder: (context, state) => const RegisterMyProfileScreen(),
  // ),
  // GoRoute(
  //   path: RegisterOtherProfileScreen.route,
  //   builder: (context, state) => const RegisterOtherProfileScreen(),
  // ),
  // // GoRoute(
  // //   path: ActivityEditScreen.route,
  // //   builder: (context, state) => ActivityEditScreen(userData: state.extra as UserInfoModel),
  // // ),

  // // 검색
  // GoRoute(
  //   path: SearchScreen.route,
  //   builder: (context, state) => const SearchScreen(),
  // ),

  // // 마이 페이지 및 설정 화면
  // // GoRoute(
  // //   path: AuthProfileScreen.route,
  // //   builder: (context, state) => const AuthProfileScreen(),
  // // ),
  // GoRoute(
  //   path: SettingScreen.route,
  //   builder: (context, state) => const SettingScreen(),
  // ),
  // GoRoute(
  //   path: SettingProfileScreen.route,
  //   builder: (context, state) => const SettingProfileScreen(),
  // ),
  // GoRoute(
  //   path: SettingStringScreen.route,
  //   builder: (context, state) => SettingStringScreen(setting: state.extra as StringSettingItemModel),
  // ),
  // GoRoute(
  //   path: SettingSelectScreen.route,
  //   builder: (context, state) => SettingSelectScreen(title: state.extra as String),
  // ),
  // // GoRoute(
  // //   path: SettingAuthScreen.route,
  // //   builder: (context, state) => const SettingAuthScreen(),
  // // ),
  // // GoRoute(
  // //   path: SettingLanguageScreen.route,
  // //   builder: (context, state) => const SettingLanguageScreen(),
  // // ),
  // // GoRoute(
  // //   path: SettingDisplayScreen.route,
  // //   builder: (context, state) => const SettingDisplayScreen(),
  // // ),
  // GoRoute(
  //   path: SettingEditTextFormScreen.route,
  //   builder: (context, state) => SettingEditTextFormScreen(
  //     setting: state.extra as SettingItemModel,
  //   ),
  // ),

  // // viewer
  // GoRoute(
  //   path: QrCodeViewerScreen.route,
  //   builder: (context, state) => QrCodeViewerScreen(
  //     qrImage: state.extra as QrImage,
  //   ),
  // )
];
