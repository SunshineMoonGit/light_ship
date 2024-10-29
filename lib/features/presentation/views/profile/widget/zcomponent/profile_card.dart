// import 'package:flutter/material.dart';
// import 'package:light_ship/config/app/ui/app_dimensions.dart';
// import 'package:light_ship/shared/extensions/build_context_extensions.dart';

// class ProfileCard extends StatelessWidget {
//   const ProfileCard({
//     required this.cardImage,
//     super.key,
//   });

//   final String cardImage;

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: Dimensions.standardCardRatio,
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: context.colorScheme.surface,
//           borderRadius: BorderRadius.circular(16),
//           border: cardImage == '' ? Border.all(color: Colors.grey[300]!) : const Border(),
//         ),

//         //! 카드 이미지
//         child: Container(),
//       ),
//     );
//   }
// }
