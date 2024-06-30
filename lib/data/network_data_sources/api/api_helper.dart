import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/network_data_sources/api/api_config.dart';
import 'package:palmkindle/data/network_data_sources/api/exceptions.dart';

@LazySingleton()
class ApiHelper {
  final Dio _dio;
  final Dio _textDio; // Separate Dio instance for fetching text

  ApiHelper(@Named('defaultDio') this._dio, @Named('textDio') this._textDio);

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

  Future<String> getText(String url) async {
    try {
      final Response<String> response = await _textDio.get(url);
      if (response.statusCode == 200 && response.data != null) {
        return response.data!;
      } else {
        return Future.error(ApiResponseNotValidException());
      }
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      return Future.error(ApiResponseNotValidException());
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
