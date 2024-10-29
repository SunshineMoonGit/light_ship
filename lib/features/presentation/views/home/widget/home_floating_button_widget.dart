// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:light_ship/config/app/const/app_svg.dart';
// import 'package:light_ship/features/presentation/providers/modal/modal_provider.dart';
// import 'package:light_ship/shared/extensions/build_context_extensions.dart';
// import 'package:light_ship/shared/widgets/svg/base_svg.dart';

// class HomeFloatingButtonWidget extends ConsumerWidget {
//   const HomeFloatingButtonWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return FloatingActionButton(
//       onPressed: () => ref.read(modalProvider.notifier).show(),
//       child: BaseSvg(
//         item: AppSvg.cardAdd,
//         color: context.colorScheme.background,
//       ),
//     );
//   }
// }
