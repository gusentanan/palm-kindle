import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPalmRepository {
  // Network
  Future<Either<AppFailure, List<Results>>> getAllBooks({int page});
  Future<Either<AppFailure, String>> getTextBook(String url);

  // Local
  Future<void> addBookToDatabase(Book book);
  Future<List<Book>> getAllBooksFromDatabase();
  Future<bool> isBookStoredLocally(String url);
}
