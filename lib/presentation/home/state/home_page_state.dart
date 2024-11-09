part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  const factory HomePageState({
    required Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles,
    required bool isLoading,
    required List<Results> books,
    required int currentPage,
    required bool hasReachedMax,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
      failureOrSucceedArticles: none(),
      isLoading: false,
      books: [],
      currentPage: 0,
      hasReachedMax: false);

  HomePageState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedArticles: none(),
      );
}
