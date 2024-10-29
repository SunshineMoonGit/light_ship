import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageIndexProvider = NotifierProvider<PageIndexProviderNotifier, int>(PageIndexProviderNotifier.new);

class PageIndexProviderNotifier extends Notifier<int> {
  @override
  build() {
    return 0;
  }

  void change(int index) {
    state = index;
  }
}
