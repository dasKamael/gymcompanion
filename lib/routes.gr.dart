// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i11;

import 'models/plan.dart' as _i12;
import 'screens/auth/auth_page.dart' as _i2;
import 'screens/exercises/create_plan/create_plan_page.dart' as _i9;
import 'screens/exercises/exercises_page.dart' as _i8;
import 'screens/home/home_page.dart' as _i5;
import 'screens/init/init_page.dart' as _i1;
import 'screens/main_navigation_page.dart' as _i3;
import 'screens/profile/profile_page.dart' as _i10;
import 'screens/workout/select_workout_page.dart' as _i6;
import 'screens/workout/workout/workout_page.dart' as _i7;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    InitRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InitPage());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthPage());
    },
    MainNavigationRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainNavigationPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    WorkoutRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ExercisesRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    Homepage.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Homepage());
    },
    SelectWorkoutRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SelectWorkoutPage());
    },
    WorkoutRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutRouteArgs>(
          orElse: () => const WorkoutRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.WorkoutPage(plan: args.plan));
    },
    Exercisespage.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Exercisespage());
    },
    CreatePlanRoute.name: (routeData) {
      final args = routeData.argsAs<CreatePlanRouteArgs>(
          orElse: () => const CreatePlanRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.CreatePlanPage(key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfilePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(InitRoute.name, path: '/'),
        _i4.RouteConfig(AuthRoute.name, path: '/auth'),
        _i4.RouteConfig(MainNavigationRoute.name,
            path: '/mainnavigation',
            children: [
              _i4.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: MainNavigationRoute.name,
                  children: [
                    _i4.RouteConfig(Homepage.name,
                        path: '', parent: HomeRouter.name)
                  ]),
              _i4.RouteConfig(WorkoutRouter.name,
                  path: 'workout',
                  parent: MainNavigationRoute.name,
                  children: [
                    _i4.RouteConfig(SelectWorkoutRoute.name,
                        path: '', parent: WorkoutRouter.name),
                    _i4.RouteConfig(WorkoutRoute.name,
                        path: 'workout', parent: WorkoutRouter.name)
                  ]),
              _i4.RouteConfig(ExercisesRouter.name,
                  path: 'exercises',
                  parent: MainNavigationRoute.name,
                  children: [
                    _i4.RouteConfig(Exercisespage.name,
                        path: '', parent: ExercisesRouter.name),
                    _i4.RouteConfig(CreatePlanRoute.name,
                        path: 'createPlan', parent: ExercisesRouter.name)
                  ]),
              _i4.RouteConfig(ProfileRouter.name,
                  path: 'profile',
                  parent: MainNavigationRoute.name,
                  children: [
                    _i4.RouteConfig(ProfileRoute.name,
                        path: '', parent: ProfileRouter.name)
                  ])
            ])
      ];
}

/// generated route for [_i1.InitPage]
class InitRoute extends _i4.PageRouteInfo<void> {
  const InitRoute() : super(name, path: '/');

  static const String name = 'InitRoute';
}

/// generated route for [_i2.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for [_i3.MainNavigationPage]
class MainNavigationRoute extends _i4.PageRouteInfo<void> {
  const MainNavigationRoute({List<_i4.PageRouteInfo>? children})
      : super(name, path: '/mainnavigation', initialChildren: children);

  static const String name = 'MainNavigationRoute';
}

/// generated route for [_i4.EmptyRouterPage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i4.EmptyRouterPage]
class WorkoutRouter extends _i4.PageRouteInfo<void> {
  const WorkoutRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'workout', initialChildren: children);

  static const String name = 'WorkoutRouter';
}

/// generated route for [_i4.EmptyRouterPage]
class ExercisesRouter extends _i4.PageRouteInfo<void> {
  const ExercisesRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'exercises', initialChildren: children);

  static const String name = 'ExercisesRouter';
}

/// generated route for [_i4.EmptyRouterPage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter({List<_i4.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i5.Homepage]
class Homepage extends _i4.PageRouteInfo<void> {
  const Homepage() : super(name, path: '');

  static const String name = 'Homepage';
}

/// generated route for [_i6.SelectWorkoutPage]
class SelectWorkoutRoute extends _i4.PageRouteInfo<void> {
  const SelectWorkoutRoute() : super(name, path: '');

  static const String name = 'SelectWorkoutRoute';
}

/// generated route for [_i7.WorkoutPage]
class WorkoutRoute extends _i4.PageRouteInfo<WorkoutRouteArgs> {
  WorkoutRoute({_i12.Plan? plan})
      : super(name, path: 'workout', args: WorkoutRouteArgs(plan: plan));

  static const String name = 'WorkoutRoute';
}

class WorkoutRouteArgs {
  const WorkoutRouteArgs({this.plan});

  final _i12.Plan? plan;

  @override
  String toString() {
    return 'WorkoutRouteArgs{plan: $plan}';
  }
}

/// generated route for [_i8.Exercisespage]
class Exercisespage extends _i4.PageRouteInfo<void> {
  const Exercisespage() : super(name, path: '');

  static const String name = 'Exercisespage';
}

/// generated route for [_i9.CreatePlanPage]
class CreatePlanRoute extends _i4.PageRouteInfo<CreatePlanRouteArgs> {
  CreatePlanRoute({_i11.Key? key})
      : super(name, path: 'createPlan', args: CreatePlanRouteArgs(key: key));

  static const String name = 'CreatePlanRoute';
}

class CreatePlanRouteArgs {
  const CreatePlanRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CreatePlanRouteArgs{key: $key}';
  }
}

/// generated route for [_i10.ProfilePage]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}
