// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:impro_helper/routes/empty_page.dart' as _i1;
import 'package:impro_helper/ui/home_page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EmptyPageRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.EmptyPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.EmptyPage]
class EmptyPageRoute extends _i3.PageRouteInfo<void> {
  const EmptyPageRoute({List<_i3.PageRouteInfo>? children})
      : super(
          EmptyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyPageRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
