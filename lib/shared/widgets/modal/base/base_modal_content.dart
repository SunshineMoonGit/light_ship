import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';

class BaseModalContent extends ConsumerWidget {
  const BaseModalContent(
    this.modal, {
    super.key,
  });

  final Widget modal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool modalToggle = ref.watch(modalProvider);

    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
        child: modalToggle
            ? Padding(
                padding: Dimensions.paddingAll,
                child: modal,
              )
            : const SizedBox.shrink(key: ValueKey<bool>(false)),
      ),
    );
  }
}
