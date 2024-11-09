import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/data/local_data_sources/local_data_sources.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/data/network_data_sources/network_data_sources.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';
import 'package:palmkindle/utils/helper/text_chunk.dart';

@LazySingleton(as: IPalmRepository)
class PalmRepository implements IPalmRepository {
  final NetworkDataSource _networkDataSource;
  final LocalDataSource _localDataSource;
  RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;

  PalmRepository(this._networkDataSource, this._localDataSource);

  // Network
  @override
  Future<Either<AppFailure, List<Results>>> getAllBooks({int page = 1}) async {
    try {
      final response = await _networkDataSource.getAllBooks(page: page);
      return right(response.results);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<String>>> getTextBook(String url) async {
    try {
      final text = await compute(
          getTextBookOnIsolate,
          TextBookParams(
            url: url,
            nds: _networkDataSource,
            isolateToken: rootIsolateToken,
          ));

      return right(text);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<Results>>> searchBooks(String query) async {
    try {
      final response = await _networkDataSource.searchBooks(query);
      return right(response.results); // Assuming results is a List<Results>
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
      // return await compute(
      //     isBookStoredLocallyOnIsolate,
      //     BookParams(
      //       title: title,
      //       lds: _localDataSource,
      //       isolateToken: rootIsolateToken,
      //     ));
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

// Anything that passed to Isolate must be a top-level function
Future<List<String>> getTextBookOnIsolate(TextBookParams data) async {
  try {
    BackgroundIsolateBinaryMessenger.ensureInitialized(data.isolateToken);

    final String rawString = await data.nds.getTextBook(data.url);
    List<String> chunkedString = Helper().chunkText(rawString, 1000);

    return chunkedString;
  } catch (e) {
    print('Error fetching text book through Isolate: $e');
    throw AppFailure.fromServerSide(e.toString());
  }
}

// Parameters that need to be passed to the Isolate should be wrapped in a single object for better readability and easier maintenance.
class TextBookParams {
  final String url;
  final NetworkDataSource nds;
  final RootIsolateToken isolateToken;
  TextBookParams({
    required this.url,
    required this.nds,
    required this.isolateToken,
  });
}

// Future<bool> isBookStoredLocallyOnIsolate(BookParams data) async {
//   try {
//     BackgroundIsolateBinaryMessenger.ensureInitialized(data.isolateToken);
//     return await data.lds.isBookStoredLocally(data.title);
//   } catch (e) {
//     throw AppFailure.fromServerSide(e.toString());
//   }
// }

// class BookParams {
//   final String title;
//   final LocalDataSource lds;
//   final RootIsolateToken isolateToken;
//   BookParams({
//     required this.title,
//     required this.lds,
//     required this.isolateToken,
//   });
// }
