import 'package:auto_route/auto_route.dart';
import 'package:auto_router_integration/routes/guards/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: ProfileRoute.page, guards: [AuthGuard()]),
            AutoRoute(page: AboutRoute.page),
          ],
        ),
        AutoRoute(page: LoginRoute.page),
      ];
}
