import 'package:auto_route/auto_route.dart';
import 'package:gymcompanion/screens/dashboard/dashboar_page.dart';
import 'package:gymcompanion/screens/home/home_page.dart';
import 'package:gymcompanion/screens/main_navigation_page.dart';
import 'package:gymcompanion/screens/plan/create_plan/create_plan_page.dart';
import 'package:gymcompanion/screens/plan/plan_page.dart';
import 'package:gymcompanion/screens/profile/profile_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: '/',
    page: MainNavigationPage,
    initial: true,
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
        path: 'dashBoard',
        name: 'DashBoardRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: DashBoardPage),
        ],
      ),
      AutoRoute(
        path: 'plans',
        name: 'PlansRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: Planpage),
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
