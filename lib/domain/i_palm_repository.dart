import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPalmRepository {
  Future<Either<AppFailure, List<Results>>> getAllBooks({int page});
  Future<Either<AppFailure, String>> getTextBook(String url);
}
