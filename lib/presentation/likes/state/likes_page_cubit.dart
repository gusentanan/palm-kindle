import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';

part 'likes_page_cubit.freezed.dart';
part 'likes_page_state.dart';

@injectable
class LikesPageCubit extends Cubit<LikesPageState> {
  final IPalmRepository _palmRepository;

  LikesPageCubit(this._palmRepository) : super(LikesPageState.initial()) {
    getAllLikedBooks();
  }

  Future<void> getAllLikedBooks() async {
    emit(state.unmodified.copyWith(isLoading: true));
    try {
      final likedBooks = await _palmRepository.getAllBooksFromDatabase();
      emit(state.unmodified.copyWith(likedBooks: likedBooks, isLoading: false));
    } catch (e) {
      emit(state.unmodified
          .copyWith(isLoading: false)); // Handle error state if needed
      print('Failed to fetch liked books: $e');
    }
  }
}
