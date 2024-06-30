import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/data_sources/dto/books_model.dart';
import 'package:palmkindle/data/data_sources/network_data_sources.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

@LazySingleton(as: IPalmRepository)
class PalmRepository implements IPalmRepository {
  final NetworkDataSource _dataSource;

  PalmRepository(this._dataSource);

  @override
  Future<Either<AppFailure, List<Results>>> getAllBooks() async {
    try {
      final response = await _dataSource.getAllBooks();
      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
