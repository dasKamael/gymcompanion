import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/auth_provider.dart';
import 'package:gymcompanion/routes.gr.dart';

final routeProvider = Provider<AppRouter>((ref) {
  ref.watch(userStateProvider)..getUser();
  return AppRouter();
});
