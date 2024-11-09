import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

part 'home_page_cubit.freezed.dart';
part 'home_page_state.dart';

@injectable
class HomePageCubit extends Cubit<HomePageState> {
  final IPalmRepository _palmRepository;
  static const int itemsPerPage = 32; // Since each page returns 32 items

  HomePageCubit(this._palmRepository) : super(HomePageState.initial()) {
    getAllBooks(page: 1);
  }
  void getAllBooks({int page = 1}) async {
    emit(state.unmodified.copyWith(isLoading: true));

    final response = await _palmRepository.getAllBooks(page: page);

    response.fold(
      (failure) {
        if (kDebugMode) print('Error: $failure');
        emit(state.unmodified.copyWith(isLoading: false));
      },
      (newBooks) {
        if (kDebugMode) {
          print('Fetched ${newBooks.length} new books');
        }

        final updatedBooks = List<Results>.from(state.books)..addAll(newBooks);
        if (kDebugMode) {
          print('${updatedBooks.length} total books');
        }

        emit(state.unmodified.copyWith(
          isLoading: false,
          failureOrSucceedArticles: optionOf(response),
          books: updatedBooks,
          currentPage: page,
          hasReachedMax: newBooks.isEmpty,
        ));
      },
    );
  }

  void loadNextPage() async {
    if (state.isLoading) return; // Avoid multiple triggers
    emit(state.copyWith(isLoading: true));

    final response =
        await _palmRepository.getAllBooks(page: state.currentPage + 1);

    response.fold(
      (failure) => emit(state.copyWith(isLoading: false)), // Handle failure
      (newBooks) {
        final updatedBooks = List.of(state.books)..addAll(newBooks);
        emit(state.copyWith(
          books: updatedBooks,
          currentPage: state.currentPage + 1,
          isLoading: false,
        ));
      },
    );
  }
}
