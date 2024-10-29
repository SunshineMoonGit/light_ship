import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/theme/custom_system_ui.dart';
import 'package:light_ship/features/presentation/providers/notification/notification_provider.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/notification/custom_notification.dart';

class BaseLayout extends ConsumerWidget {
  const BaseLayout({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.appBar,
    this.safeAreaTop = true,
    this.safeAreaBottom = false,
    this.background,
  });

  final Widget body;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final Color? background;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<String?>(notificationProvider, (previous, next) {
      if (next != null) {
        customNotification(context, next);
        ref.read(notificationProvider.notifier).clear();
      }
    });

// 클래스 외부나 위젯 트리 초기화 시점에서 체크할 수 있는 조건을 만들 수 있습니다.
    final bool containsTextField = body is TextField;

    return GestureDetector(
      onTap: () {
        if (containsTextField) {
          FocusScope.of(context).unfocus();
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: CustomSystemUI.getSystemUIOverlayStyle(context.colorScheme.background),
        child: Scaffold(
          backgroundColor: background ?? context.colorScheme.background,
          appBar: appBar,
          bottomNavigationBar: bottomNavigationBar,
          body: SafeArea(
            top: safeAreaTop,
            bottom: safeAreaBottom,
            child: body,
          ),
        ),
      ),
    );
  }
}
