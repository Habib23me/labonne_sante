import 'package:dio/dio.dart';
import 'package:labonne_sante/core/constants/api.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options.baseUrl = ApiConstants.baseUrl;
    _dio.options.connectTimeout = const Duration(
      seconds: ApiConstants.connectTimeout,
    );
    _dio.options.receiveTimeout = const Duration(
      seconds: ApiConstants.receiveTimeout,
    );
  }

  Dio get dio => _dio;
}
