import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';

class BaseModalBarrier extends ConsumerWidget {
  const BaseModalBarrier({super.key, required this.showModal});

  final bool showModal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final bool modal = ref.watch(modalProvider);

    return IgnorePointer(
      ignoring: !showModal,
      child: GestureDetector(
        onTap: () {
          ref.read(modalProvider.notifier).hide();
        },
        child: AnimatedOpacity(
          opacity: showModal ? 0.5 : 0,
          duration: const Duration(milliseconds: 250),
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
