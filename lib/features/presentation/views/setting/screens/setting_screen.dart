import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_string.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/config/var/setting_config.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/presentation/providers/setting/custom_setting_provider.dart';
import 'package:light_ship/features/presentation/views/core/layout/sliver/custom_sliver_setting_layout.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/_main/setting_premium_widget.dart';
import 'package:light_ship/features/presentation/views/setting/widgets/zcommon/setting_items_with_title_widget.dart';
import 'package:light_ship/shared/extensions/list_extensions.dart';
import 'package:light_ship/shared/services/items/setting_item_model.dart';
import 'package:light_ship/shared/widgets/divider/base_divider.dart';

class SettingScreen extends ConsumerWidget {
  static String get route => '/setting';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CustomSettingEntity customSetting = ref.watch(customSettingProvider);

    return CustomSliverSettingLayout(
      appBarTitle: AppString.setting,
      slivers: [
        // 명함 관리
// 명함 추가/편집/삭제
// 명함 카테고리 설정 (개인, 업무 등)
// 명함 정렬 옵션 (이름순, 회사순, 최근 추가순 등)

// 공유 설정
// 기본 명함 공유 방식 설정 (QR 코드, 이메일, 메시지 등)
// 공유 시 포함할 정보 선택

        const SettingPremiumWidget(),
        const BaseDivider(),

        SettingItemsWithTitleWidget(
          items: SettingItemModel(
            category: 'Account',
            settings: SettingConfig.accountSettings(context, customSetting),
          ),
        ),

        SettingItemsWithTitleWidget(
          items: SettingItemModel(
            category: '시스템 설정',
            settings: SettingConfig.systemSettings(context, customSetting),
          ),
        ),

        // 통계 및 분석
        // 명함 사용 통계 보기 옵션
        // 네트워크 분석 기능 켜기/끄기

        // 도움말 및 지원
        // 튜토리얼 및 가이드
        // 고객 지원 연락처
        // 앱 버전 정보 및 업데이트 확인
      ].addSpaceBetween(Dimensions.verticalSpaceMedium),
    );
    // CustomSettingLayout(
    // appBarTitle: AppString.setting,
    // bottomTitle: 'SIGN OUT',
    // bottomOnTap: AppMethod(ref).auth.signOut,
//       slivers: [

//       ].toSliver(),
  }
}
