import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DioService {
  final Dio dio = Dio();

  Future initialDio() async {
    const String _url = '${const String.fromEnvironment('BASE_URL')}/api/v1';
    final String token = await FirebaseAuth.instance.currentUser!.getIdToken();

    dio.options = BaseOptions(
      baseUrl: _url,
      headers: {
        'X-Authorization': token,
      },
    );
  }
}
