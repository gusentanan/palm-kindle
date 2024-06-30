import 'package:palmkindle/data/data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPalmRepository {
  Future<Either<AppFailure, List<Results>>> getAllBooks();
}
