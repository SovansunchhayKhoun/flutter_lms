import 'package:auto_route/auto_route.dart';
import 'package:flutter_lms/constants/route_constant.dart';
import 'package:flutter_lms/routes/guards/auth_guard.dart';
import 'package:flutter_lms/routes/routes.gr.dart';

class RouteInfo {
  final AutoRoute autoRoute;
  final PageRouteInfo pageRouteInfo;

  RouteInfo({
    required this.autoRoute,
    required this.pageRouteInfo,
  });
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteConstant.login,
          page: LoginRoute.page,
        ),
        ...guardedRoutes
      ];

  List<AutoRoute> get guardedRoutes => [
        AutoRoute(
          path: RouteConstant.labDetail,
          page: LabDetailRoute.page,
          guards: [AuthGuard()],
        ),
        AutoRoute(
          path: RouteConstant.rootLayout,
          page: RootLayout.page,
          guards: [AuthGuard()],
          children: [
            ...rootLayoutRoutes,
          ],
        ),
      ];

  List<AutoRoute> get rootLayoutRoutes => [
        RedirectRoute(
          path: '',
          redirectTo: RouteConstant.lab,
        ),
        ...bottomNavRoutes.map((e) => e.autoRoute),
      ];

  List<RouteInfo> get bottomNavRoutes => [
        RouteInfo(
          autoRoute: AutoRoute(
            initial: true,
            path: RouteConstant.lab,
            page: LabRoute.page,
            // guards: [AuthGuard()],
          ),
          pageRouteInfo: const LabRoute(),
        ),
        RouteInfo(
          autoRoute: AutoRoute(
            path: RouteConstant.profile,
            page: ProfileRoute.page,
            // guards: [AuthGuard()],
          ),
          pageRouteInfo: const ProfileRoute(),
        ),
      ];
}
