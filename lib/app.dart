import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gymcompanion/constants/text_theme_dark.dart';
import 'package:gymcompanion/providers/init_provider.dart';
import 'package:gymcompanion/routes.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = ref.read(routeProvider);
    return MaterialApp.router(
      theme: ConstDarkTheme.darkTheme,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
