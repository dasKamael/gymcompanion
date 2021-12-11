// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import 'screens/dashboard/dashboar_page.dart' as _i4;
import 'screens/home/home_page.dart' as _i3;
import 'screens/main_navigation_page.dart' as _i1;
import 'screens/plan/create_plan/create_plan_page.dart' as _i6;
import 'screens/plan/plan_page.dart' as _i5;
import 'screens/profile/profile_page.dart' as _i7;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainNavigationRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainNavigationPage());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    DashBoardRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PlansRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Homepage.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Homepage());
    },
    DashBoardRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DashBoardPage());
    },
    Planpage.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Planpage());
    },
    CreatePlanRoute.name: (routeData) {
      final args = routeData.argsAs<CreatePlanRouteArgs>(
          orElse: () => const CreatePlanRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.CreatePlanPage(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainNavigationRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainNavigationRoute.name,
              children: [
                _i2.RouteConfig(Homepage.name,
                    path: '', parent: HomeRouter.name)
              ]),
          _i2.RouteConfig(DashBoardRouter.name,
              path: 'dashBoard',
              parent: MainNavigationRoute.name,
              children: [
                _i2.RouteConfig(DashBoardRoute.name,
                    path: '', parent: DashBoardRouter.name)
              ]),
          _i2.RouteConfig(PlansRouter.name,
              path: 'plans',
              parent: MainNavigationRoute.name,
              children: [
                _i2.RouteConfig(Planpage.name,
                    path: '', parent: PlansRouter.name),
                _i2.RouteConfig(CreatePlanRoute.name,
                    path: 'createPlan', parent: PlansRouter.name)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: MainNavigationRoute.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name)
              ])
        ])
      ];
}

/// generated route for [_i1.MainNavigationPage]
class MainNavigationRoute extends _i2.PageRouteInfo<void> {
  const MainNavigationRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainNavigationRoute';
}

/// generated route for [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class DashBoardRouter extends _i2.PageRouteInfo<void> {
  const DashBoardRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'dashBoard', initialChildren: children);

  static const String name = 'DashBoardRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class PlansRouter extends _i2.PageRouteInfo<void> {
  const PlansRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'plans', initialChildren: children);

  static const String name = 'PlansRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i3.Homepage]
class Homepage extends _i2.PageRouteInfo<void> {
  const Homepage() : super(name, path: '');

  static const String name = 'Homepage';
}

/// generated route for [_i4.DashBoardPage]
class DashBoardRoute extends _i2.PageRouteInfo<void> {
  const DashBoardRoute() : super(name, path: '');

  static const String name = 'DashBoardRoute';
}

/// generated route for [_i5.Planpage]
class Planpage extends _i2.PageRouteInfo<void> {
  const Planpage() : super(name, path: '');

  static const String name = 'Planpage';
}

/// generated route for [_i6.CreatePlanPage]
class CreatePlanRoute extends _i2.PageRouteInfo<CreatePlanRouteArgs> {
  CreatePlanRoute({_i8.Key? key})
      : super(name, path: 'createPlan', args: CreatePlanRouteArgs(key: key));

  static const String name = 'CreatePlanRoute';
}

class CreatePlanRouteArgs {
  const CreatePlanRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'CreatePlanRouteArgs{key: $key}';
  }
}

/// generated route for [_i7.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}
