import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_detail_model.freezed.dart';

@freezed
class BookDetailModel with _$BookDetailModel {
  const factory BookDetailModel({
    required int id,
    required String? title,
    required String? authors,
    required int? birthYear,
    required int? deathYear,
    required List<String>? subjects,
    required List<String>? bookshelves,
    required List<String>? languages,
    required bool? copyright,
    required String? imgJpeg,
    required String? textPlain,
    required int? downloadCount,
  }) = _BookDetailModel;
}
