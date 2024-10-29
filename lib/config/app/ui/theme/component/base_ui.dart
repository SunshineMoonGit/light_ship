import 'package:flutter/material.dart';
import 'package:light_ship/config/app/ui/app_dimensions.dart';
import 'package:light_ship/shared/extensions/build_context_extensions.dart';

class BaseUi {
  final BuildContext context;

  BaseUi(this.context);

  Border border({Color? color, double? width}) {
    return Border.all(
      color: color ?? context.colorScheme.tertiary,
      width: width ?? Dimensions.borderWith,
    );
  }

  BorderRadius borderRadius({double? radius}) {
    return BorderRadius.circular(radius ?? Dimensions.borderRadiusMedium);
  }
}
