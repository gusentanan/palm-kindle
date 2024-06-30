import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

part 'home_page_cubit.freezed.dart';
part 'home_page_state.dart';

@injectable
class HomePageCubit extends Cubit<HomePageState> {
  final IPalmRepository _palmRepository;

  HomePageCubit(this._palmRepository) : super(HomePageState.initial()) {
    getAllBooks();
  }

  void getAllBooks() async {
    emit(state.unmodified.copyWith(isLoading: true));
    final response = await _palmRepository.getAllBooks();
    emit(state.unmodified.copyWith(
      isLoading: false,
      failureOrSucceedArticles: optionOf(response),
    ));
  }
}
