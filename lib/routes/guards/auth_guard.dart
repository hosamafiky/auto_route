import 'package:auto_route/auto_route.dart';
import 'package:auto_router_integration/routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(LoginRoute(onLogin: (isSuccess) {
      if (isSuccess ?? false) {
        resolver.next(true);
        router.removeLast();
      } else {
        // Stay at LoginRoute...
      }
    }));
  }
}
