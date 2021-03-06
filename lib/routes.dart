import 'package:auto_route/auto_route.dart';
import 'package:gymcompanion/screens/auth/auth_page.dart';
import 'package:gymcompanion/screens/home/home_page.dart';
import 'package:gymcompanion/screens/init/init_page.dart';
import 'package:gymcompanion/screens/main_navigation_page.dart';
import 'package:gymcompanion/screens/exercises/create_plan/create_plan_page.dart';
import 'package:gymcompanion/screens/exercises/exercises_page.dart';
import 'package:gymcompanion/screens/profile/profile_page.dart';
import 'package:gymcompanion/screens/workout/select_workout_page.dart';
import 'package:gymcompanion/screens/workout/workout/workout_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: '/',
    page: InitPage,
    initial: true,
  ),
  AutoRoute(
    path: '/auth',
    page: AuthPage,
  ),
  AutoRoute(
    path: '/mainnavigation',
    page: MainNavigationPage,
    children: [
      AutoRoute(
        path: 'home',
        name: 'HomeRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: Homepage),
        ],
      ),
      AutoRoute(
        path: 'workout',
        name: 'WorkoutRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: SelectWorkoutPage),
          AutoRoute(path: 'workout', page: WorkoutPage),
        ],
      ),
      AutoRoute(
        path: 'exercises',
        name: 'ExercisesRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: Exercisespage),
          AutoRoute(path: 'createPlan', page: CreatePlanPage),
        ],
      ),
      AutoRoute(
        path: 'profile',
        name: 'ProfileRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: ProfilePage),
        ],
      ),
    ],
  ),
])
class $AppRouter {}
