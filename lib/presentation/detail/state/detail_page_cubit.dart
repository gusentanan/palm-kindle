import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:palmkindle/domain/core/app_failure.dart';
import 'package:palmkindle/domain/i_palm_repository.dart';

part 'detail_page_cubit.freezed.dart';
part 'detail_page_state.dart';

@injectable
class DetailPageCubit extends Cubit<DetailPageState> {
  final IPalmRepository _palmRepository;

  DetailPageCubit(this._palmRepository) : super(DetailPageState.initial());

  void init(String url) {
    getTextBook(url);
  }

  void getTextBook(String url) async {
    emit(state.unmodified.copyWith(isLoading: true));
    final response = await _palmRepository.getTextBook(url);
    emit(state.unmodified.copyWith(
      isLoading: false,
      failureOrSucceedArticles: optionOf(response),
    ));
  }
}
