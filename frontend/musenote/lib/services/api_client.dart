import 'package:dio/dio.dart';

class ApiClient {
  static const String baseUrl = 'http://localhost:8000';

  final Dio _dio;

  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 30),
          headers: {'Content-Type': 'application/json'},
        ),
      );

  Dio get dio => _dio;
}
