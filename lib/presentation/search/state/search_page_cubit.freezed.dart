// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchPageState {
  dynamic get failureOrSucceedArticles => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Results> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {dynamic failureOrSucceedArticles, bool isLoading, List<Results> books});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = freezed,
    Object? isLoading = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      failureOrSucceedArticles: freezed == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles
          : failureOrSucceedArticles // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPageStateImplCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$SearchPageStateImplCopyWith(_$SearchPageStateImpl value,
          $Res Function(_$SearchPageStateImpl) then) =
      __$$SearchPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic failureOrSucceedArticles, bool isLoading, List<Results> books});
}

/// @nodoc
class __$$SearchPageStateImplCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$SearchPageStateImpl>
    implements _$$SearchPageStateImplCopyWith<$Res> {
  __$$SearchPageStateImplCopyWithImpl(
      _$SearchPageStateImpl _value, $Res Function(_$SearchPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = freezed,
    Object? isLoading = null,
    Object? books = null,
  }) {
    return _then(_$SearchPageStateImpl(
      failureOrSucceedArticles: freezed == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles!
          : failureOrSucceedArticles,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc

class _$SearchPageStateImpl extends _SearchPageState {
  const _$SearchPageStateImpl(
      {required this.failureOrSucceedArticles,
      required this.isLoading,
      required final List<Results> books})
      : _books = books,
        super._();

  @override
  final dynamic failureOrSucceedArticles;
  @override
  final bool isLoading;
  final List<Results> _books;
  @override
  List<Results> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'SearchPageState(failureOrSucceedArticles: $failureOrSucceedArticles, isLoading: $isLoading, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPageStateImpl &&
            const DeepCollectionEquality().equals(
                other.failureOrSucceedArticles, failureOrSucceedArticles) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrSucceedArticles),
      isLoading,
      const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      __$$SearchPageStateImplCopyWithImpl<_$SearchPageStateImpl>(
          this, _$identity);
}

abstract class _SearchPageState extends SearchPageState {
  const factory _SearchPageState(
      {required final dynamic failureOrSucceedArticles,
      required final bool isLoading,
      required final List<Results> books}) = _$SearchPageStateImpl;
  const _SearchPageState._() : super._();

  @override
  dynamic get failureOrSucceedArticles;
  @override
  bool get isLoading;
  @override
  List<Results> get books;
  @override
  @JsonKey(ignore: true)
  _$$SearchPageStateImplCopyWith<_$SearchPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
