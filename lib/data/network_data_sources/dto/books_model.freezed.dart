// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) {
  return _BooksModel.fromJson(json);
}

/// @nodoc
mixin _$BooksModel {
  int get count => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksModelCopyWith<BooksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksModelCopyWith<$Res> {
  factory $BooksModelCopyWith(
          BooksModel value, $Res Function(BooksModel) then) =
      _$BooksModelCopyWithImpl<$Res, BooksModel>;
  @useResult
  $Res call({int count, String next, String? previous, List<Results> results});
}

/// @nodoc
class _$BooksModelCopyWithImpl<$Res, $Val extends BooksModel>
    implements $BooksModelCopyWith<$Res> {
  _$BooksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksModelImplCopyWith<$Res>
    implements $BooksModelCopyWith<$Res> {
  factory _$$BooksModelImplCopyWith(
          _$BooksModelImpl value, $Res Function(_$BooksModelImpl) then) =
      __$$BooksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String next, String? previous, List<Results> results});
}

/// @nodoc
class __$$BooksModelImplCopyWithImpl<$Res>
    extends _$BooksModelCopyWithImpl<$Res, _$BooksModelImpl>
    implements _$$BooksModelImplCopyWith<$Res> {
  __$$BooksModelImplCopyWithImpl(
      _$BooksModelImpl _value, $Res Function(_$BooksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$BooksModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooksModelImpl implements _BooksModel {
  const _$BooksModelImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Results> results})
      : _results = results;

  factory _$BooksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooksModelImplFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final String? previous;
  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BooksModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksModelImplCopyWith<_$BooksModelImpl> get copyWith =>
      __$$BooksModelImplCopyWithImpl<_$BooksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooksModelImplToJson(
      this,
    );
  }
}

abstract class _BooksModel implements BooksModel {
  const factory _BooksModel(
      {required final int count,
      required final String next,
      required final String? previous,
      required final List<Results> results}) = _$BooksModelImpl;

  factory _BooksModel.fromJson(Map<String, dynamic> json) =
      _$BooksModelImpl.fromJson;

  @override
  int get count;
  @override
  String get next;
  @override
  String? get previous;
  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$$BooksModelImplCopyWith<_$BooksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Authors> get authors => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;
  List<String>? get bookshelves => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  bool? get copyright => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;
  Formats? get formats => throw _privateConstructorUsedError;
  int? get downloadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {int id,
      String? title,
      List<Authors> authors,
      List<String>? subjects,
      List<String>? bookshelves,
      List<String>? languages,
      bool? copyright,
      String? mediaType,
      Formats? formats,
      int? downloadCount});

  $FormatsCopyWith<$Res>? get formats;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? authors = null,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Authors>,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookshelves: freezed == bookshelves
          ? _value.bookshelves
          : bookshelves // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as Formats?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormatsCopyWith<$Res>? get formats {
    if (_value.formats == null) {
      return null;
    }

    return $FormatsCopyWith<$Res>(_value.formats!, (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      List<Authors> authors,
      List<String>? subjects,
      List<String>? bookshelves,
      List<String>? languages,
      bool? copyright,
      String? mediaType,
      Formats? formats,
      int? downloadCount});

  @override
  $FormatsCopyWith<$Res>? get formats;
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? authors = null,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(_$ResultsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Authors>,
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookshelves: freezed == bookshelves
          ? _value._bookshelves
          : bookshelves // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as Formats?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl(
      {required this.id,
      required this.title,
      final List<Authors> authors = const [],
      required final List<String>? subjects,
      required final List<String>? bookshelves,
      required final List<String>? languages,
      required this.copyright,
      required this.mediaType,
      required this.formats,
      required this.downloadCount})
      : _authors = authors,
        _subjects = subjects,
        _bookshelves = bookshelves,
        _languages = languages;

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  final List<Authors> _authors;
  @override
  @JsonKey()
  List<Authors> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _bookshelves;
  @override
  List<String>? get bookshelves {
    final value = _bookshelves;
    if (value == null) return null;
    if (_bookshelves is EqualUnmodifiableListView) return _bookshelves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? copyright;
  @override
  final String? mediaType;
  @override
  final Formats? formats;
  @override
  final int? downloadCount;

  @override
  String toString() {
    return 'Results(id: $id, title: $title, authors: $authors, subjects: $subjects, bookshelves: $bookshelves, languages: $languages, copyright: $copyright, mediaType: $mediaType, formats: $formats, downloadCount: $downloadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality()
                .equals(other._bookshelves, _bookshelves) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.formats, formats) || other.formats == formats) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_bookshelves),
      const DeepCollectionEquality().hash(_languages),
      copyright,
      mediaType,
      formats,
      downloadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {required final int id,
      required final String? title,
      final List<Authors> authors,
      required final List<String>? subjects,
      required final List<String>? bookshelves,
      required final List<String>? languages,
      required final bool? copyright,
      required final String? mediaType,
      required final Formats? formats,
      required final int? downloadCount}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  List<Authors> get authors;
  @override
  List<String>? get subjects;
  @override
  List<String>? get bookshelves;
  @override
  List<String>? get languages;
  @override
  bool? get copyright;
  @override
  String? get mediaType;
  @override
  Formats? get formats;
  @override
  int? get downloadCount;
  @override
  @JsonKey(ignore: true)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Authors _$AuthorsFromJson(Map<String, dynamic> json) {
  return _Authors.fromJson(json);
}

/// @nodoc
mixin _$Authors {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_year')
  int? get birthYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'death_year')
  int? get deathYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorsCopyWith<Authors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorsCopyWith<$Res> {
  factory $AuthorsCopyWith(Authors value, $Res Function(Authors) then) =
      _$AuthorsCopyWithImpl<$Res, Authors>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'birth_year') int? birthYear,
      @JsonKey(name: 'death_year') int? deathYear});
}

/// @nodoc
class _$AuthorsCopyWithImpl<$Res, $Val extends Authors>
    implements $AuthorsCopyWith<$Res> {
  _$AuthorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int?,
      deathYear: freezed == deathYear
          ? _value.deathYear
          : deathYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorsImplCopyWith<$Res> implements $AuthorsCopyWith<$Res> {
  factory _$$AuthorsImplCopyWith(
          _$AuthorsImpl value, $Res Function(_$AuthorsImpl) then) =
      __$$AuthorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'birth_year') int? birthYear,
      @JsonKey(name: 'death_year') int? deathYear});
}

/// @nodoc
class __$$AuthorsImplCopyWithImpl<$Res>
    extends _$AuthorsCopyWithImpl<$Res, _$AuthorsImpl>
    implements _$$AuthorsImplCopyWith<$Res> {
  __$$AuthorsImplCopyWithImpl(
      _$AuthorsImpl _value, $Res Function(_$AuthorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(_$AuthorsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int?,
      deathYear: freezed == deathYear
          ? _value.deathYear
          : deathYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorsImpl implements _Authors {
  const _$AuthorsImpl(
      {required this.name,
      @JsonKey(name: 'birth_year') required this.birthYear,
      @JsonKey(name: 'death_year') required this.deathYear});

  factory _$AuthorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorsImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'birth_year')
  final int? birthYear;
  @override
  @JsonKey(name: 'death_year')
  final int? deathYear;

  @override
  String toString() {
    return 'Authors(name: $name, birthYear: $birthYear, deathYear: $deathYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.deathYear, deathYear) ||
                other.deathYear == deathYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, birthYear, deathYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorsImplCopyWith<_$AuthorsImpl> get copyWith =>
      __$$AuthorsImplCopyWithImpl<_$AuthorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorsImplToJson(
      this,
    );
  }
}

abstract class _Authors implements Authors {
  const factory _Authors(
          {required final String? name,
          @JsonKey(name: 'birth_year') required final int? birthYear,
          @JsonKey(name: 'death_year') required final int? deathYear}) =
      _$AuthorsImpl;

  factory _Authors.fromJson(Map<String, dynamic> json) = _$AuthorsImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'birth_year')
  int? get birthYear;
  @override
  @JsonKey(name: 'death_year')
  int? get deathYear;
  @override
  @JsonKey(ignore: true)
  _$$AuthorsImplCopyWith<_$AuthorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Formats _$FormatsFromJson(Map<String, dynamic> json) {
  return _Formats.fromJson(json);
}

/// @nodoc
mixin _$Formats {
  @JsonKey(name: 'image/jpeg')
  String? get imageJpeg => throw _privateConstructorUsedError;
  @JsonKey(name: 'text/plain; charset=us-ascii')
  String? get textPlain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormatsCopyWith<Formats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatsCopyWith<$Res> {
  factory $FormatsCopyWith(Formats value, $Res Function(Formats) then) =
      _$FormatsCopyWithImpl<$Res, Formats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image/jpeg') String? imageJpeg,
      @JsonKey(name: 'text/plain; charset=us-ascii') String? textPlain});
}

/// @nodoc
class _$FormatsCopyWithImpl<$Res, $Val extends Formats>
    implements $FormatsCopyWith<$Res> {
  _$FormatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageJpeg = freezed,
    Object? textPlain = freezed,
  }) {
    return _then(_value.copyWith(
      imageJpeg: freezed == imageJpeg
          ? _value.imageJpeg
          : imageJpeg // ignore: cast_nullable_to_non_nullable
              as String?,
      textPlain: freezed == textPlain
          ? _value.textPlain
          : textPlain // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormatsImplCopyWith<$Res> implements $FormatsCopyWith<$Res> {
  factory _$$FormatsImplCopyWith(
          _$FormatsImpl value, $Res Function(_$FormatsImpl) then) =
      __$$FormatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image/jpeg') String? imageJpeg,
      @JsonKey(name: 'text/plain; charset=us-ascii') String? textPlain});
}

/// @nodoc
class __$$FormatsImplCopyWithImpl<$Res>
    extends _$FormatsCopyWithImpl<$Res, _$FormatsImpl>
    implements _$$FormatsImplCopyWith<$Res> {
  __$$FormatsImplCopyWithImpl(
      _$FormatsImpl _value, $Res Function(_$FormatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageJpeg = freezed,
    Object? textPlain = freezed,
  }) {
    return _then(_$FormatsImpl(
      imageJpeg: freezed == imageJpeg
          ? _value.imageJpeg
          : imageJpeg // ignore: cast_nullable_to_non_nullable
              as String?,
      textPlain: freezed == textPlain
          ? _value.textPlain
          : textPlain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormatsImpl implements _Formats {
  const _$FormatsImpl(
      {@JsonKey(name: 'image/jpeg') required this.imageJpeg,
      @JsonKey(name: 'text/plain; charset=us-ascii') required this.textPlain});

  factory _$FormatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormatsImplFromJson(json);

  @override
  @JsonKey(name: 'image/jpeg')
  final String? imageJpeg;
  @override
  @JsonKey(name: 'text/plain; charset=us-ascii')
  final String? textPlain;

  @override
  String toString() {
    return 'Formats(imageJpeg: $imageJpeg, textPlain: $textPlain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatsImpl &&
            (identical(other.imageJpeg, imageJpeg) ||
                other.imageJpeg == imageJpeg) &&
            (identical(other.textPlain, textPlain) ||
                other.textPlain == textPlain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageJpeg, textPlain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatsImplCopyWith<_$FormatsImpl> get copyWith =>
      __$$FormatsImplCopyWithImpl<_$FormatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormatsImplToJson(
      this,
    );
  }
}

abstract class _Formats implements Formats {
  const factory _Formats(
      {@JsonKey(name: 'image/jpeg') required final String? imageJpeg,
      @JsonKey(name: 'text/plain; charset=us-ascii')
      required final String? textPlain}) = _$FormatsImpl;

  factory _Formats.fromJson(Map<String, dynamic> json) = _$FormatsImpl.fromJson;

  @override
  @JsonKey(name: 'image/jpeg')
  String? get imageJpeg;
  @override
  @JsonKey(name: 'text/plain; charset=us-ascii')
  String? get textPlain;
  @override
  @JsonKey(ignore: true)
  _$$FormatsImplCopyWith<_$FormatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
