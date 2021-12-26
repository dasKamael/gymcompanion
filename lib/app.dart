import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/text_theme_dark.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = ref.watch(routeProvider);
    return MaterialApp.router(
      theme: ConstDarkTheme.darkTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
