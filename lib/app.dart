import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gymcompanion/constants/text_theme_dark.dart';
import 'package:gymcompanion/routes.gr.dart';

class App extends HookWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ConstDarkTheme.darkTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
