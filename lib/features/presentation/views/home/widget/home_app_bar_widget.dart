import 'package:flutter/material.dart';
import 'package:light_ship/shared/widgets/app_bar/base_app_bar.dart';

class HomeAppBarWidget extends BaseAppBar {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseAppBar(
      title: 'Wallet',
      centerTitle: false,
      backSpace: false,
      
    );
  }
}
