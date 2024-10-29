part of 'basic_router.dart';

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<AuthState>(authStateProvider, (_, __) {
      notifyListeners();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    final authState = _ref.read(authStateProvider);

    final String current = state.uri.path;

    print('redirect');
    print(current);
    print(authState);

    // String? notifier() {
    //   ssPrint('Current path: $current', 'Current authState: $authState', 'redirect', false);
    //   return null;
    // }

    // 페이지 이동 시 인증 상태 갱신
    // List<String> routes = [SplashScreen.route];

    switch (authState) {
      case AuthState.initial:
        return initial(current);
      case AuthState.authenticated:
        return authenticated(current);
      case AuthState.unauthenticated:
        return unauthenticated(current);
      case AuthState.authenticatedButIncomplete:
        return authenticatedButIncomplete(current);
      default:
        return null;
    }
  }

  // 초기값
  String? initial(String current) {
    List<String> exception = [SplashScreen.route];
    if (exception.contains(current)) return null;
    return SplashScreen.route;
  }

  // 회원 인증 완료
  String? authenticated(String current) {
    List<String> exception = [SplashScreen.route, SignInScreen.route, MyRegisterScreen.route];
    if (!exception.contains(current)) return null;
    return RootScreen.route;
  }

  // 회원 인증 실패
  String? unauthenticated(String current) {
    List<String> exception = [SignInScreen.route];
    if (exception.contains(current)) return null;
    return SignInScreen.route;
  }

  // 회원 인증 성공 / 회원 정보 없음.
  String? authenticatedButIncomplete(String current) {
    List<String> exception = [MyRegisterScreen.route];
    if (exception.contains(current)) return null;
    return MyRegisterScreen.route;
  }
}
