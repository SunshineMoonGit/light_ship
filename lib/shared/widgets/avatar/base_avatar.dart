import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';
import 'package:light_ship/shared/widgets/svg/base_svg.dart';

class BaseAvatar extends ConsumerWidget {
  const BaseAvatar({
    super.key,
    this.imagePath,
    this.size,
    this.borderWidth,
    this.borderColor,
  });

  final String? imagePath;
  final double? size;
  final double? borderWidth;
  final Color? borderColor;
  // final String icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: size ?? Dimensions.avatarSize,
      height: size ?? Dimensions.avatarSize,
      child: imagePath != null
          ? CachedNetworkImage(
              imageUrl: imagePath!,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => _buildDefaultAvatar(context),
            )
          : _buildDefaultAvatar(context),
    );
  }

  Widget _buildDefaultAvatar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.screenSizeTiny),
        child: BaseSvg(
          item: AppSvg.profileWithOutCircle,
          size: size ?? Dimensions.avatarSize * 0.5,
        ),
      ),
    );
  }
}
