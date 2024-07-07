import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/data/network_data_sources/api/api_helper.dart';
import 'package:palmkindle/data/network_data_sources/api/api_path_constant.dart';
import 'package:palmkindle/data/network_data_sources/api/exceptions.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';

@injectable
class NetworkDataSource {
  final Dio _dio;
  final Dio _textDio;

  NetworkDataSource(
      @Named('defaultDio') this._dio, @Named('textDio') this._textDio);

  Future<BooksModel> getAllBooks({int page = 1}) async {
    final response = await _dio.get(
      '/books/',
      queryParameters: {'page': page},
    );

    return BooksModel.fromJson(response.data);
  }

  Future<String> getTextBook(String url) async {
    final response = await _textDio.get(url);
    if (response.statusCode == 200 && response.data != null) {
      return response.data!;
    } else {
      return Future.error(ApiResponseNotValidException());
    }
  }

  Future<BooksModel> searchBooks(String query) async {
    final response = await _dio.get(
      '/books',
      queryParameters: {'search': query},
    );

    return BooksModel.fromJson(response.data);
  }
}
