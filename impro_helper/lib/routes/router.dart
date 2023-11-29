import 'package:auto_route/auto_route.dart';
import 'package:impro_helper/routes/router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Tab,Page,Route',
)
class AppRouter extends $AppRouter {
//  @override
//  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: HomeRouter.page, children: [
      AutoRoute(path: "currentMatch", page: EmptyPageRoute.page),
      AutoRoute(path: "scores", page: EmptyPageRoute.page),
      AutoRoute(path: "newImprov", page: EmptyPageRoute.page),
      AutoRoute(path: "matches", page: EmptyPageRoute.page),
      AutoRoute(path: "database", page: EmptyPageRoute.page),
    ]),
  ];
}
