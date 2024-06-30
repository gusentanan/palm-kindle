import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/data/data_sources/api/api_helper.dart';
import 'package:palmkindle/data/data_sources/api/api_path_constant.dart';
import 'package:palmkindle/data/data_sources/dto/books_model.dart';

@injectable
class NetworkDataSource {
  final ApiHelper _apiHelper;

  NetworkDataSource(this._apiHelper);

  Future<List<Results>> getAllBooks() async {
    final response = await _apiHelper.get(path: ApiPathConstant.allBooks);

    final rawList = response['results'] as List;
    return rawList.map((json) => Results.fromJson(json)).toList();
  }
}
