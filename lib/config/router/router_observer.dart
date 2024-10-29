part of 'basic_router.dart';

class GoRouterObserver extends NavigatorObserver {
  final Ref ref;

  GoRouterObserver(this.ref);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _pageIndicator(route.settings.name);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _pageIndicator(previousRoute?.settings.name);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _pageIndicator(newRoute?.settings.name);
  }

  void _pageIndicator(String? route) {
    if (route == null) {
      ssPrint('null page router', 'router_observer');
      return;
    }

    ssPrint(route, 'router_observer');

    // if (route == SearchScreen.route) {
    //   // ref.read(controllerProvider.notifier).init(ControllerType.search);
    // }
  }
}
