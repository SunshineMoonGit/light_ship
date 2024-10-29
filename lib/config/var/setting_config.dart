import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/presentation/views/setting/screens/account/backup_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/account/profile_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/system/language_setting_screen.dart';
import 'package:light_ship/features/presentation/views/setting/screens/system/theme_setting_screen.dart';
import 'package:light_ship/shared/services/converter/base_converter.dart';
import 'package:light_ship/shared/services/items/setting_item_model.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';
import 'package:light_ship/shared/widgets/text/base_text.dart';

class SettingConfig {
  static List<SettingItemDetailModel> accountSettings(BuildContext context, CustomSettingEntity customSetting) {
    return [
      // 보안 설정
      // 앱 잠금 기능 (PIN, 지문인식, 안면인식 등)
      // 개인정보 보호 설정 (특정 명함 숨기기 등)

      // 프로필 설정
      //  사용자 기본 정보 관리 (이름, 직함, 회사명 등)
      //  프로필 사진 업로드/변경
      SettingItemDetailModel(
        title: AppString.settingProfile,
        prefixIcon: AppSvg.profile,
        onTap: () => context.push(ProfileSettingScreen.route),
        showArrow: true,
      ),

      // 동기화 및 백업
      //  클라우드 동기화 설정
      //  자동 백업 주기 설정
      //  데이터 복원 옵션
      SettingItemDetailModel(
        title: AppString.settingBackup,
        prefixIcon: AppSvg.backup,
        onTap: () => context.push(BackupSettingScreen.route),
        showArrow: true,
      ),
    ];
  }

  static List<SettingItemDetailModel> systemSettings(BuildContext context, CustomSettingEntity customSetting) {
    return [
      // 디스플레이 설정
      // 다크 모드 / 라이트 모드
      // 명함 표시 레이아웃 선택
      // 글꼴 크기 조절
      SettingItemDetailModel(
        title: AppString.settingBrightness,
        prefixIcon: AppSvg.brightness,
        suffix: BaseText(BaseConverter.brightness(customSetting.theme)),
        onTap: () => context.push(ThemeSettingScreen.route),
        showArrow: true,
      ),

      // 언어 및 지역 설정
      // 앱 언어 변경
      SettingItemDetailModel(
        title: AppString.settingLanguage,
        prefixIcon: AppSvg.language,
        suffix: const BaseText('한국어'),
        onTap: () => context.push(LanguageSettingScreen.route),
        showArrow: true,
      ),

      // 명함 스캔 설정
      // 기본 스캔 모드 선택 (자동/수동)
      // OCR 언어 설정
      // 스캔 후 자동 저장 옵션
    ];
  }

  static List<SettingItemDetailModel> backup() {
    return [
      SettingItemDetailModel(
        title: AppString.settingCloudDownload,
        suffix: const BaseSvg(item: AppSvg.cloudDownload),
      ),
      SettingItemDetailModel(
        title: AppString.settingCloudUpload,
        suffix: const BaseSvg(item: AppSvg.cloudUpload),
      ),
      SettingItemDetailModel(
        title: AppString.settingSyncCycle,
        suffix: const BaseText('5분'),
      ),
    ];
  }

  static List<SettingItemDetailModel> language() {
    return [
      SettingItemDetailModel(
        title: AppString.en,
        suffix: const BaseSvg(item: AppSvg.check),
      ),
      SettingItemDetailModel(
        title: AppString.ko,
        suffix: const BaseSvg(item: AppSvg.check),
      ),
      SettingItemDetailModel(
        title: AppString.jp,
        suffix: const BaseSvg(item: AppSvg.check),
      ),
    ];
  }
}
