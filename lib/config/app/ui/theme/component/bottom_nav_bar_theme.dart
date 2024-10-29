part of '../app_theme.dart';

extension BottomNavBarThemeExtension on AppTheme {
  BottomNavigationBarThemeData get _bottomNavBarTheme => BottomNavigationBarThemeData(
        // elevation: 8, // BottomNavigationBar의 그림자 높이 설정
        backgroundColor: _colorScheme.background, // 배경색 설정

        type: BottomNavigationBarType.fixed, // 고정 타입으로 설정
        showSelectedLabels: false, // 선택된 라벨 숨기기
        showUnselectedLabels: false, // 선택되지 않은 라벨 숨기기
      );
}
