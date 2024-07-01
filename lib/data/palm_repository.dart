import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/data/local_data_sources/local_data_sources.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/data/network_data_sources/network_data_sources.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

@LazySingleton(as: IPalmRepository)
class PalmRepository implements IPalmRepository {
  final NetworkDataSource _networkDataSource;
  final LocalDataSource _localDataSource;

  PalmRepository(this._networkDataSource, this._localDataSource);

  // Network
  @override
  Future<Either<AppFailure, List<Results>>> getAllBooks({int page = 1}) async {
    try {
      final response = await _networkDataSource.getAllBooks(page: page);
      return right(response.results); // Assuming results is a List<Results>
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, String>> getTextBook(String url) async {
    try {
      final text = await _networkDataSource.getTextBook(url);
      return right(text);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  // Local
  @override
  Future<void> addBookToDatabase(Book book) async {
    try {
      await _localDataSource.insertBook(book);
    } catch (e) {
      throw AppFailure.fromServerSide(e.toString());
    }
  }

  @override
  Future<List<Book>> getAllBooksFromDatabase() async {
    try {
      return await _localDataSource.getAllBooks();
    } catch (e) {
      throw AppFailure.fromServerSide(e.toString());
    }
  }

  @override
  Future<bool> isBookStoredLocally(String title) async {
    try {
      return await _localDataSource.isBookStoredLocally(title);
    } catch (e) {
      throw AppFailure.fromServerSide(e.toString());
    }
  }

  @override
  Future<void> deleteBookFromDatabase(int id) async {
    try {
      return await _localDataSource.deleteBook(id);
    } catch (e) {
      throw AppFailure.fromServerSide(e.toString());
    }
  }
}
