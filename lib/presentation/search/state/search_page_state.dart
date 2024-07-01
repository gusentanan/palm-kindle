part of 'search_page_cubit.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const SearchPageState._();

  const factory SearchPageState({
    required Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles,
    required bool isLoading,
    required List<Results> books,
  }) = _SearchPageState;

  factory SearchPageState.initial() => SearchPageState(
        failureOrSucceedArticles: none(),
        isLoading: false,
        books: [],
      );

  SearchPageState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedArticles: none(),
      );
}
