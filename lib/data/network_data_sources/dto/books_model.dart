import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_model.freezed.dart';
part 'books_model.g.dart';

@freezed
class BooksModel with _$BooksModel {
  const factory BooksModel({
    required int count,
    required String next,
    required String? previous,
    required List<Results> results,
  }) = _BooksModel;

  factory BooksModel.fromJson(Map<String, dynamic> json) =>
      _$BooksModelFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    required int id,
    required String? title,
    @Default([]) List<Authors> authors,
    required List<String>? subjects,
    required List<String>? bookshelves,
    required List<String>? languages,
    required bool? copyright,
    required String? mediaType,
    required Formats? formats,
    required int? downloadCount,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Authors with _$Authors {
  const factory Authors({
    required String? name,
    @JsonKey(name: 'birth_year') required int? birthYear,
    @JsonKey(name: 'death_year') required int? deathYear,
  }) = _Authors;

  factory Authors.fromJson(Map<String, dynamic> json) =>
      _$AuthorsFromJson(json);
}

@freezed
class Formats with _$Formats {
  const factory Formats({
    @JsonKey(name: 'image/jpeg') required String? imageJpeg,
    @JsonKey(name: 'text/plain; charset=us-ascii') required String? textPlain,
  }) = _Formats;

  factory Formats.fromJson(Map<String, dynamic> json) =>
      _$FormatsFromJson(json);
}
