import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/features/presentation/views/register/widgets/_component/empty_card_image.dart';
import 'package:light_ship/features/presentation/views/register/widgets/_component/selected_card_image.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/widgets/container/custom_container_with_title.dart';

class RegisterCardImageWidget extends ConsumerWidget {
  const RegisterCardImageWidget({
    super.key,
    required this.cardImage,
  });

  final String? cardImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomContainerWithTitle(
      hideContainer: true,
      title: 'CardImage',
      child: GestureDetector(
        // onTap: () => AppMethod(ref).modalShow(ModalType.card),
        child: AspectRatio(
          aspectRatio: Dimensions.standardCardRatio,
          child: cardImage.isNothing() ? const EmptyCardImage() : SelectedCardImage(cardImage: cardImage!),
        ),
      ),
    );
  }
}
