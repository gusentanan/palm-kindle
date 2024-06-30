part of 'detail_page_cubit.dart';

@freezed
class DetailPageState with _$DetailPageState {
  const DetailPageState._();

  const factory DetailPageState({
    required Option<Either<AppFailure, String>> failureOrSucceedArticles,
    required bool isLoading,
  }) = _DetailPageState;

  factory DetailPageState.initial() => DetailPageState(
        failureOrSucceedArticles: none(),
        isLoading: false,
      );

  DetailPageState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedArticles: none(),
      );
}
