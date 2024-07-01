// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

part 'detail_page_cubit.freezed.dart';
part 'detail_page_state.dart';

@injectable
class DetailPageCubit extends Cubit<DetailPageState> {
  final IPalmRepository _palmRepository;

  DetailPageCubit(this._palmRepository) : super(DetailPageState.initial());

  void init(String url, String title) {
    checkIfStoredLocally(title);
    getTextBook(url);
  }

  void getTextBook(String url) async {
    emit(state.unmodified.copyWith(isLoading: true));
    final response = await _palmRepository.getTextBook(url);
    emit(state.unmodified.copyWith(
      isLoading: false,
      failureOrSucceedArticles: optionOf(response),
    ));
  }

  Future<void> addToDatabase(Book book) async {
    try {
      await _palmRepository.addBookToDatabase(book);
      emit(state.copyWith(isStoredLocally: true));
    } catch (e) {
      print('Error adding book to database: $e');
    }
  }

  Future<void> deleteFromDatabase(int id) async {
    try {
      await _palmRepository.deleteBookFromDatabase(id);
      emit(state.copyWith(isStoredLocally: false));
    } catch (e) {
      print('Error adding book to database: $e');
    }
  }

  void checkIfStoredLocally(String title) async {
    try {
      final isStored = await _palmRepository.isBookStoredLocally(title);
      emit(state.copyWith(isStoredLocally: isStored));
    } catch (e) {
      print('Error checking if stored locally: $e');
    }
  }
}
