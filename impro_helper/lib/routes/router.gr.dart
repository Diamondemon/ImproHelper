// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i4;

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/gestures.dart' as _i5;
import 'package:flutter/material.dart' as _i2;

import '../ui/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    CurrentMatchRouter.name: (routeData) {
      final args = routeData.argsAs<CurrentMatchRouterArgs>(
          orElse: () => const CurrentMatchRouterArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.Scaffold(
          key: args.key,
          appBar: args.appBar,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          floatingActionButtonLocation: args.floatingActionButtonLocation,
          floatingActionButtonAnimator: args.floatingActionButtonAnimator,
          persistentFooterButtons: args.persistentFooterButtons,
          persistentFooterAlignment: args.persistentFooterAlignment,
          drawer: args.drawer,
          onDrawerChanged: args.onDrawerChanged,
          endDrawer: args.endDrawer,
          onEndDrawerChanged: args.onEndDrawerChanged,
          bottomNavigationBar: args.bottomNavigationBar,
          bottomSheet: args.bottomSheet,
          backgroundColor: args.backgroundColor,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          primary: args.primary,
          drawerDragStartBehavior: args.drawerDragStartBehavior,
          extendBody: args.extendBody,
          extendBodyBehindAppBar: args.extendBodyBehindAppBar,
          drawerScrimColor: args.drawerScrimColor,
          drawerEdgeDragWidth: args.drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: args.endDrawerEnableOpenDragGesture,
          restorationId: args.restorationId,
        ),
      );
    },
    ScoresRouter.name: (routeData) {
      final args = routeData.argsAs<ScoresRouterArgs>(
          orElse: () => const ScoresRouterArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.Scaffold(
          key: args.key,
          appBar: args.appBar,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          floatingActionButtonLocation: args.floatingActionButtonLocation,
          floatingActionButtonAnimator: args.floatingActionButtonAnimator,
          persistentFooterButtons: args.persistentFooterButtons,
          persistentFooterAlignment: args.persistentFooterAlignment,
          drawer: args.drawer,
          onDrawerChanged: args.onDrawerChanged,
          endDrawer: args.endDrawer,
          onEndDrawerChanged: args.onEndDrawerChanged,
          bottomNavigationBar: args.bottomNavigationBar,
          bottomSheet: args.bottomSheet,
          backgroundColor: args.backgroundColor,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          primary: args.primary,
          drawerDragStartBehavior: args.drawerDragStartBehavior,
          extendBody: args.extendBody,
          extendBodyBehindAppBar: args.extendBodyBehindAppBar,
          drawerScrimColor: args.drawerScrimColor,
          drawerEdgeDragWidth: args.drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: args.endDrawerEnableOpenDragGesture,
          restorationId: args.restorationId,
        ),
      );
    },
    NewImprovRouter.name: (routeData) {
      final args = routeData.argsAs<NewImprovRouterArgs>(
          orElse: () => const NewImprovRouterArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.Scaffold(
          key: args.key,
          appBar: args.appBar,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          floatingActionButtonLocation: args.floatingActionButtonLocation,
          floatingActionButtonAnimator: args.floatingActionButtonAnimator,
          persistentFooterButtons: args.persistentFooterButtons,
          persistentFooterAlignment: args.persistentFooterAlignment,
          drawer: args.drawer,
          onDrawerChanged: args.onDrawerChanged,
          endDrawer: args.endDrawer,
          onEndDrawerChanged: args.onEndDrawerChanged,
          bottomNavigationBar: args.bottomNavigationBar,
          bottomSheet: args.bottomSheet,
          backgroundColor: args.backgroundColor,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          primary: args.primary,
          drawerDragStartBehavior: args.drawerDragStartBehavior,
          extendBody: args.extendBody,
          extendBodyBehindAppBar: args.extendBodyBehindAppBar,
          drawerScrimColor: args.drawerScrimColor,
          drawerEdgeDragWidth: args.drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: args.endDrawerEnableOpenDragGesture,
          restorationId: args.restorationId,
        ),
      );
    },
    MatchesRouter.name: (routeData) {
      final args = routeData.argsAs<MatchesRouterArgs>(
          orElse: () => const MatchesRouterArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.Scaffold(
          key: args.key,
          appBar: args.appBar,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          floatingActionButtonLocation: args.floatingActionButtonLocation,
          floatingActionButtonAnimator: args.floatingActionButtonAnimator,
          persistentFooterButtons: args.persistentFooterButtons,
          persistentFooterAlignment: args.persistentFooterAlignment,
          drawer: args.drawer,
          onDrawerChanged: args.onDrawerChanged,
          endDrawer: args.endDrawer,
          onEndDrawerChanged: args.onEndDrawerChanged,
          bottomNavigationBar: args.bottomNavigationBar,
          bottomSheet: args.bottomSheet,
          backgroundColor: args.backgroundColor,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          primary: args.primary,
          drawerDragStartBehavior: args.drawerDragStartBehavior,
          extendBody: args.extendBody,
          extendBodyBehindAppBar: args.extendBodyBehindAppBar,
          drawerScrimColor: args.drawerScrimColor,
          drawerEdgeDragWidth: args.drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: args.endDrawerEnableOpenDragGesture,
          restorationId: args.restorationId,
        ),
      );
    },
    DatabaseRouter.name: (routeData) {
      final args = routeData.argsAs<DatabaseRouterArgs>(
          orElse: () => const DatabaseRouterArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.Scaffold(
          key: args.key,
          appBar: args.appBar,
          body: args.body,
          floatingActionButton: args.floatingActionButton,
          floatingActionButtonLocation: args.floatingActionButtonLocation,
          floatingActionButtonAnimator: args.floatingActionButtonAnimator,
          persistentFooterButtons: args.persistentFooterButtons,
          persistentFooterAlignment: args.persistentFooterAlignment,
          drawer: args.drawer,
          onDrawerChanged: args.onDrawerChanged,
          endDrawer: args.endDrawer,
          onEndDrawerChanged: args.onEndDrawerChanged,
          bottomNavigationBar: args.bottomNavigationBar,
          bottomSheet: args.bottomSheet,
          backgroundColor: args.backgroundColor,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          primary: args.primary,
          drawerDragStartBehavior: args.drawerDragStartBehavior,
          extendBody: args.extendBody,
          extendBodyBehindAppBar: args.extendBodyBehindAppBar,
          drawerScrimColor: args.drawerScrimColor,
          drawerEdgeDragWidth: args.drawerEdgeDragWidth,
          drawerEnableOpenDragGesture: args.drawerEnableOpenDragGesture,
          endDrawerEnableOpenDragGesture: args.endDrawerEnableOpenDragGesture,
          restorationId: args.restorationId,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRouter.name,
          path: '/',
          children: [
            _i3.RouteConfig(
              CurrentMatchRouter.name,
              path: 'currentMatch',
              parent: HomeRouter.name,
            ),
            _i3.RouteConfig(
              ScoresRouter.name,
              path: 'scores',
              parent: HomeRouter.name,
            ),
            _i3.RouteConfig(
              NewImprovRouter.name,
              path: 'newImprov',
              parent: HomeRouter.name,
            ),
            _i3.RouteConfig(
              MatchesRouter.name,
              path: 'matches',
              parent: HomeRouter.name,
            ),
            _i3.RouteConfig(
              DatabaseRouter.name,
              path: 'database',
              parent: HomeRouter.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.Scaffold]
class CurrentMatchRouter extends _i3.PageRouteInfo<CurrentMatchRouterArgs> {
  CurrentMatchRouter({
    _i2.Key? key,
    _i2.PreferredSizeWidget? appBar,
    _i2.Widget? body,
    _i2.Widget? floatingActionButton,
    _i2.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i2.Widget>? persistentFooterButtons,
    _i2.AlignmentDirectional persistentFooterAlignment =
        _i2.AlignmentDirectional.centerEnd,
    _i2.Widget? drawer,
    void Function(bool)? onDrawerChanged,
    _i2.Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    _i2.Widget? bottomNavigationBar,
    _i2.Widget? bottomSheet,
    _i4.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    _i4.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) : super(
          CurrentMatchRouter.name,
          path: 'currentMatch',
          args: CurrentMatchRouterArgs(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            persistentFooterAlignment: persistentFooterAlignment,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        );

  static const String name = 'CurrentMatchRouter';
}

class CurrentMatchRouterArgs {
  const CurrentMatchRouterArgs({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = _i2.AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final _i2.Key? key;

  final _i2.PreferredSizeWidget? appBar;

  final _i2.Widget? body;

  final _i2.Widget? floatingActionButton;

  final _i2.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i2.Widget>? persistentFooterButtons;

  final _i2.AlignmentDirectional persistentFooterAlignment;

  final _i2.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i2.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i2.Widget? bottomNavigationBar;

  final _i2.Widget? bottomSheet;

  final _i4.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i4.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'CurrentMatchRouterArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, persistentFooterAlignment: $persistentFooterAlignment, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}

/// generated route for
/// [_i2.Scaffold]
class ScoresRouter extends _i3.PageRouteInfo<ScoresRouterArgs> {
  ScoresRouter({
    _i2.Key? key,
    _i2.PreferredSizeWidget? appBar,
    _i2.Widget? body,
    _i2.Widget? floatingActionButton,
    _i2.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i2.Widget>? persistentFooterButtons,
    _i2.AlignmentDirectional persistentFooterAlignment =
        _i2.AlignmentDirectional.centerEnd,
    _i2.Widget? drawer,
    void Function(bool)? onDrawerChanged,
    _i2.Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    _i2.Widget? bottomNavigationBar,
    _i2.Widget? bottomSheet,
    _i4.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    _i4.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) : super(
          ScoresRouter.name,
          path: 'scores',
          args: ScoresRouterArgs(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            persistentFooterAlignment: persistentFooterAlignment,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        );

  static const String name = 'ScoresRouter';
}

class ScoresRouterArgs {
  const ScoresRouterArgs({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = _i2.AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final _i2.Key? key;

  final _i2.PreferredSizeWidget? appBar;

  final _i2.Widget? body;

  final _i2.Widget? floatingActionButton;

  final _i2.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i2.Widget>? persistentFooterButtons;

  final _i2.AlignmentDirectional persistentFooterAlignment;

  final _i2.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i2.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i2.Widget? bottomNavigationBar;

  final _i2.Widget? bottomSheet;

  final _i4.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i4.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'ScoresRouterArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, persistentFooterAlignment: $persistentFooterAlignment, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}

/// generated route for
/// [_i2.Scaffold]
class NewImprovRouter extends _i3.PageRouteInfo<NewImprovRouterArgs> {
  NewImprovRouter({
    _i2.Key? key,
    _i2.PreferredSizeWidget? appBar,
    _i2.Widget? body,
    _i2.Widget? floatingActionButton,
    _i2.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i2.Widget>? persistentFooterButtons,
    _i2.AlignmentDirectional persistentFooterAlignment =
        _i2.AlignmentDirectional.centerEnd,
    _i2.Widget? drawer,
    void Function(bool)? onDrawerChanged,
    _i2.Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    _i2.Widget? bottomNavigationBar,
    _i2.Widget? bottomSheet,
    _i4.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    _i4.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) : super(
          NewImprovRouter.name,
          path: 'newImprov',
          args: NewImprovRouterArgs(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            persistentFooterAlignment: persistentFooterAlignment,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        );

  static const String name = 'NewImprovRouter';
}

class NewImprovRouterArgs {
  const NewImprovRouterArgs({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = _i2.AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final _i2.Key? key;

  final _i2.PreferredSizeWidget? appBar;

  final _i2.Widget? body;

  final _i2.Widget? floatingActionButton;

  final _i2.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i2.Widget>? persistentFooterButtons;

  final _i2.AlignmentDirectional persistentFooterAlignment;

  final _i2.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i2.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i2.Widget? bottomNavigationBar;

  final _i2.Widget? bottomSheet;

  final _i4.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i4.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'NewImprovRouterArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, persistentFooterAlignment: $persistentFooterAlignment, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}

/// generated route for
/// [_i2.Scaffold]
class MatchesRouter extends _i3.PageRouteInfo<MatchesRouterArgs> {
  MatchesRouter({
    _i2.Key? key,
    _i2.PreferredSizeWidget? appBar,
    _i2.Widget? body,
    _i2.Widget? floatingActionButton,
    _i2.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i2.Widget>? persistentFooterButtons,
    _i2.AlignmentDirectional persistentFooterAlignment =
        _i2.AlignmentDirectional.centerEnd,
    _i2.Widget? drawer,
    void Function(bool)? onDrawerChanged,
    _i2.Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    _i2.Widget? bottomNavigationBar,
    _i2.Widget? bottomSheet,
    _i4.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    _i4.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) : super(
          MatchesRouter.name,
          path: 'matches',
          args: MatchesRouterArgs(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            persistentFooterAlignment: persistentFooterAlignment,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        );

  static const String name = 'MatchesRouter';
}

class MatchesRouterArgs {
  const MatchesRouterArgs({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = _i2.AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final _i2.Key? key;

  final _i2.PreferredSizeWidget? appBar;

  final _i2.Widget? body;

  final _i2.Widget? floatingActionButton;

  final _i2.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i2.Widget>? persistentFooterButtons;

  final _i2.AlignmentDirectional persistentFooterAlignment;

  final _i2.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i2.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i2.Widget? bottomNavigationBar;

  final _i2.Widget? bottomSheet;

  final _i4.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i4.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'MatchesRouterArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, persistentFooterAlignment: $persistentFooterAlignment, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}

/// generated route for
/// [_i2.Scaffold]
class DatabaseRouter extends _i3.PageRouteInfo<DatabaseRouterArgs> {
  DatabaseRouter({
    _i2.Key? key,
    _i2.PreferredSizeWidget? appBar,
    _i2.Widget? body,
    _i2.Widget? floatingActionButton,
    _i2.FloatingActionButtonLocation? floatingActionButtonLocation,
    _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator,
    List<_i2.Widget>? persistentFooterButtons,
    _i2.AlignmentDirectional persistentFooterAlignment =
        _i2.AlignmentDirectional.centerEnd,
    _i2.Widget? drawer,
    void Function(bool)? onDrawerChanged,
    _i2.Widget? endDrawer,
    void Function(bool)? onEndDrawerChanged,
    _i2.Widget? bottomNavigationBar,
    _i2.Widget? bottomSheet,
    _i4.Color? backgroundColor,
    bool? resizeToAvoidBottomInset,
    bool primary = true,
    _i5.DragStartBehavior drawerDragStartBehavior = _i5.DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    _i4.Color? drawerScrimColor,
    double? drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
    String? restorationId,
  }) : super(
          DatabaseRouter.name,
          path: 'database',
          args: DatabaseRouterArgs(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            persistentFooterAlignment: persistentFooterAlignment,
            drawer: drawer,
            onDrawerChanged: onDrawerChanged,
            endDrawer: endDrawer,
            onEndDrawerChanged: onEndDrawerChanged,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: primary,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            restorationId: restorationId,
          ),
        );

  static const String name = 'DatabaseRouter';
}

class DatabaseRouterArgs {
  const DatabaseRouterArgs({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.persistentFooterAlignment = _i2.AlignmentDirectional.centerEnd,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = _i5.DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  });

  final _i2.Key? key;

  final _i2.PreferredSizeWidget? appBar;

  final _i2.Widget? body;

  final _i2.Widget? floatingActionButton;

  final _i2.FloatingActionButtonLocation? floatingActionButtonLocation;

  final _i2.FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<_i2.Widget>? persistentFooterButtons;

  final _i2.AlignmentDirectional persistentFooterAlignment;

  final _i2.Widget? drawer;

  final void Function(bool)? onDrawerChanged;

  final _i2.Widget? endDrawer;

  final void Function(bool)? onEndDrawerChanged;

  final _i2.Widget? bottomNavigationBar;

  final _i2.Widget? bottomSheet;

  final _i4.Color? backgroundColor;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final _i5.DragStartBehavior drawerDragStartBehavior;

  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final _i4.Color? drawerScrimColor;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  @override
  String toString() {
    return 'DatabaseRouterArgs{key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, floatingActionButtonAnimator: $floatingActionButtonAnimator, persistentFooterButtons: $persistentFooterButtons, persistentFooterAlignment: $persistentFooterAlignment, drawer: $drawer, onDrawerChanged: $onDrawerChanged, endDrawer: $endDrawer, onEndDrawerChanged: $onEndDrawerChanged, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId}';
  }
}
