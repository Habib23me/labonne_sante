import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options.baseUrl =
        'https://68f0f2750b966ad50034d024.mockapi.io/api/v1/';
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
  }

  Dio get dio => _dio;
}
