import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: ConstColors.secondaryColor,
      routes: const [HomeRouter(), DashBoardRouter(), PlansRouter(), ProfileRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SalomonBottomBar(
            selectedItemColor: ConstColors.primaryColor,
            unselectedItemColor: ConstColors.unselected,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              if (tabsRouter.activeIndex == index) {
                // Pop until initial Tab Page
              }
              tabsRouter.setActiveIndex(index);
            },
            items: [
              SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text('Home')),
              SalomonBottomBarItem(icon: const Icon(Icons.dashboard), title: const Text('Dashboard')),
              SalomonBottomBarItem(icon: const Icon(Icons.note), title: const Text('Plan')),
              SalomonBottomBarItem(icon: const Icon(Icons.person), title: const Text('Profile')),
            ],
          ),
        );
      },
    );
  }
}
