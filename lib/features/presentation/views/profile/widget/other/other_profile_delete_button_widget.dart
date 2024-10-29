import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/app_method/app_method.dart';
import 'package:light_ship/shared/widgets/button/custom_bottom_button.dart';

class OtherProfileDeleteButtonWidget extends ConsumerWidget {
  const OtherProfileDeleteButtonWidget({
    super.key,
    required this.uid,
  });

  final String? uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomBottomButton(
      title: '삭제',
      backgroundColor: Colors.red,
      onTap: () async {
        if (uid.isNull()) print('회원정보를 알수가 없습니다. 다시 시도 해주세요');
        await AppMethod(ref).wallet.delete(uid!).then((value) => context.pop());
      },
    );
  }
}
