import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/data/network_data_sources/network_data_sources.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

@LazySingleton(as: IPalmRepository)
class PalmRepository implements IPalmRepository {
  final NetworkDataSource _dataSource;

  PalmRepository(this._dataSource);

  @override
  Future<Either<AppFailure, List<Results>>> getAllBooks({int page = 1}) async {
    try {
      final response = await _dataSource.getAllBooks(page: page);
      return right(response.results); // Assuming results is a List<Results>
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, String>> getTextBook(String url) async {
    try {
      final text = await _dataSource.getTextBook(url);
      return right(text);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
