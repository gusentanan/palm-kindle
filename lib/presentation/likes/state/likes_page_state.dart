part of 'likes_page_cubit.dart';

@freezed
class LikesPageState with _$LikesPageState {
  const LikesPageState._();

  const factory LikesPageState({
    required List<Book> likedBooks,
    required bool isLoading,
  }) = _LikesPageState;

  factory LikesPageState.initial() => const LikesPageState(
        likedBooks: [],
        isLoading: false,
      );

  LikesPageState get unmodified => copyWith(
        isLoading: false,
        likedBooks: [],
      );
}
