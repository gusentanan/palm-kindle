part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  const factory HomePageState({
    required Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles,
    required bool isLoading,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
        failureOrSucceedArticles: none(),
        isLoading: false,
      );

  HomePageState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedArticles: none(),
      );
}
