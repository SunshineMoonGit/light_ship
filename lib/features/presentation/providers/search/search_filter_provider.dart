import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFilterProviderNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void onTap(int value) {
    state = value;
  }

  void dispose() {
    if (state != 0) {
      state = 0;
    }
  }
}

final searchFilterProvider = NotifierProvider<SearchFilterProviderNotifier, int>(SearchFilterProviderNotifier.new);
