import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:light_ship/config/app/enums/form_enums.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';

final controllerManagerProvider = Provider.autoDispose.family<TextControllerManager, ControllerType>((ref, type) {
  final manager = TextControllerManager(type: type);

  // Provider가 dispose될 때 ControllerManager의 disposeAll 메서드를 호출
  ref.onDispose(() {
    manager.disposeAll();
  });

  return manager;
});
