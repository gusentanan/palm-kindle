import 'package:bloc/bloc.dart';
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

  HomePageCubit(this._palmRepository) : super(HomePageState.initial()) {
    getAllBooks(page: 1); // Fetch initial page
  }

  void getAllBooks({int page = 1}) async {
    emit(state.unmodified.copyWith(isLoading: true));
    final response = await _palmRepository.getAllBooks(page: page);
    emit(state.unmodified.copyWith(
      isLoading: false,
      failureOrSucceedArticles: optionOf(response),
      books: response.fold((_) => [], (books) => books),
      currentPage: page,
    ));
  }

  void loadNextPage() {
    final nextPage = state.currentPage + 1;
    getAllBooks(page: nextPage);
  }
}
