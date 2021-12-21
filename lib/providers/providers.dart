import 'dart:developer';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/routes.gr.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final routeProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

Dio buildDioClient() {
  const String _url = '${const String.fromEnvironment('BASE_URL')}/v1';
  const String proxy = String.fromEnvironment('POSTMAN_PROXY_ADDRESS');

  final dio = Dio(
    BaseOptions(
      baseUrl: _url,
    ),
  );
  _addNetworkProxyIfEnabled(dio, proxy);
  return dio;
}

void _addNetworkProxyIfEnabled(
  Dio dio,
  String? proxy,
) {
  const bool proxyEnabled = bool.fromEnvironment('POSTMAN_PROXY');
  if (proxyEnabled && proxy != null) {
    log('Enabled system proxy $proxy');
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      client
        ..findProxy = (uri) {
          return 'PROXY $proxy';
        }
        ..badCertificateCallback = (cert, host, port) => true;
    };
  }
}

final dioProvider = FutureProvider<Dio>((ref) async {
  final dio = buildDioClient();

  return dio;
});
