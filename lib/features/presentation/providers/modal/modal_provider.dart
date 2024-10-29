import 'package:flutter_riverpod/flutter_riverpod.dart';

class ModelProviderNotifier extends Notifier<bool> {
  @override
  build() {
    return false;
  }

  // 모달을 표시하기 위한 메소드
  void show() {
    state = true;
    // state = ModalState(
    //   isVisible: true,
    //   modalType: modalType,
    //   userType: ref.read(myUserInfoProvider).userType,
    // );
  }

  // 모달을 숨기기 위한 메소드
  void hide() {
    state = false;
  }
}

final modalProvider = NotifierProvider<ModelProviderNotifier, bool>(ModelProviderNotifier.new);
