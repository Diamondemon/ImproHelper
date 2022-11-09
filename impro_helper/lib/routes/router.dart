
import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';

import '../ui/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Tab,Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: "HomeRouter",
      page: HomePage,
      children: [
        AutoRoute(
          path: "currentMatch",
          name: "currentMatchRouter",
          page: Scaffold,
        ),
        AutoRoute(
          path: "scores",
          name: "scoresRouter",
          page: Scaffold,
        ),
        AutoRoute(
          path: "newImprov",
          name: "newImprovRouter",
          page: Scaffold,
        ),
        AutoRoute(
          path: "matches",
          name: "matchesRouter",
          page: Scaffold,
        ),
        AutoRoute(
          path: "database",
          name: "databaseRouter",
          page: Scaffold,
        ),
      ]
    ),
  ],
)
class $AppRouter {}