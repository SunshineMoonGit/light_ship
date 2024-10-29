// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:light_ship/config/app/const/app_svg.dart';
// import 'package:light_ship/shared/widgets/svg/base_svg.dart';

// class BaseDropBox extends StatefulWidget {
//   const BaseDropBox({super.key});

//   @override
//   State<StatefulWidget> createState() => CustomDropDownState();
// }

// class CustomDropDownState extends State<BaseDropBox> {
//   final OverlayPortalController _tooltipController = OverlayPortalController();

//   @override
//   Widget build(BuildContext context) {
//     return OverlayPortal(
//       controller: _tooltipController,
//       overlayChildBuilder: (BuildContext context) {
//         return  Positioned(
//           bottom: 30,
//           left: 30,
//           child: Container(child: Column(children: [],),),
//         );
//       },
//       child: GestureDetector(
//         onTap: onTap,
//         child: const BaseSvg(item: AppSvg.moreSquare),
//       ),
//     );
//   }

//   void onTap() {
//     _tooltipController.toggle();
//   }
// }
