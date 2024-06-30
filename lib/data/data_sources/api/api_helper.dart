import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/data_sources/api/api_config.dart';
import 'package:palmkindle/data/data_sources/api/exceptions.dart';

@LazySingleton()
class ApiHelper {
  final Dio _dio;
  ApiHelper(this._dio);

  Future<Map<String, dynamic>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        options: options,
      );
      return ApiConfiguration.handleApiResponse(response);
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
