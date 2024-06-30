import 'package:dio/dio.dart';
import 'package:palmkindle/data/data_sources/api/exceptions.dart';

class ApiConfiguration {
  const ApiConfiguration._();

  static Future<Map<String, dynamic>> handleApiResponse(
      Response response) async {
    if (!isFormatValid(response.data)) {
      return Future.error(ApiResponseNotValidException());
    }

    final data = response.data;

    if (data == null) {
      return Future.error(PreConditionedException(data));
    }

    return data;
  }

  static Future<Map<String, dynamic>> handleDioErrorResponse(
      DioException error) async {
    switch (error.type) {
      case DioExceptionType.badResponse:
        if (isFormatValid(error.response!.data)) {
          return handleApiResponse(error.response!);
        }
        break;
      case DioExceptionType.connectionError:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      default:
        return Future.error(TimeoutException());
    }
    return Future.error(TimeoutException());
  }

  static bool isFormatValid(dynamic data) {
    // Implement your format validation logic here
    return data != null && data is Map<String, dynamic>;
  }
}
