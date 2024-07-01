import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_page_cubit.freezed.dart';
part 'search_page_state.dart';

@injectable
class SearchPageCubit extends Cubit<SearchPageState> {
  final IPalmRepository _palmRepository;

  SearchPageCubit(this._palmRepository) : super(SearchPageState.initial());

  void searchBooks(String query) async {
    emit(state.unmodified.copyWith(isLoading: true));
    final response = await _palmRepository.searchBooks(query);
    emit(state.unmodified.copyWith(
      isLoading: false,
      failureOrSucceedArticles: optionOf(response),
      books: response.fold((_) => [], (books) => books),
    ));
  }
}
