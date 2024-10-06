// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailPageState {
  Option<Either<AppFailure, List<String>>> get failureOrSucceedArticles =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isStoredLocally => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPageStateCopyWith<DetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPageStateCopyWith<$Res> {
  factory $DetailPageStateCopyWith(
          DetailPageState value, $Res Function(DetailPageState) then) =
      _$DetailPageStateCopyWithImpl<$Res, DetailPageState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<String>>> failureOrSucceedArticles,
      bool isLoading,
      bool isStoredLocally});
}

/// @nodoc
class _$DetailPageStateCopyWithImpl<$Res, $Val extends DetailPageState>
    implements $DetailPageStateCopyWith<$Res> {
  _$DetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = null,
    Object? isLoading = null,
    Object? isStoredLocally = null,
  }) {
    return _then(_value.copyWith(
      failureOrSucceedArticles: null == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles
          : failureOrSucceedArticles // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<String>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStoredLocally: null == isStoredLocally
          ? _value.isStoredLocally
          : isStoredLocally // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPageStateImplCopyWith<$Res>
    implements $DetailPageStateCopyWith<$Res> {
  factory _$$DetailPageStateImplCopyWith(_$DetailPageStateImpl value,
          $Res Function(_$DetailPageStateImpl) then) =
      __$$DetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<String>>> failureOrSucceedArticles,
      bool isLoading,
      bool isStoredLocally});
}

/// @nodoc
class __$$DetailPageStateImplCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res, _$DetailPageStateImpl>
    implements _$$DetailPageStateImplCopyWith<$Res> {
  __$$DetailPageStateImplCopyWithImpl(
      _$DetailPageStateImpl _value, $Res Function(_$DetailPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = null,
    Object? isLoading = null,
    Object? isStoredLocally = null,
  }) {
    return _then(_$DetailPageStateImpl(
      failureOrSucceedArticles: null == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles
          : failureOrSucceedArticles // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<String>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isStoredLocally: null == isStoredLocally
          ? _value.isStoredLocally
          : isStoredLocally // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailPageStateImpl extends _DetailPageState {
  const _$DetailPageStateImpl(
      {required this.failureOrSucceedArticles,
      required this.isLoading,
      required this.isStoredLocally})
      : super._();

  @override
  final Option<Either<AppFailure, List<String>>> failureOrSucceedArticles;
  @override
  final bool isLoading;
  @override
  final bool isStoredLocally;

  @override
  String toString() {
    return 'DetailPageState(failureOrSucceedArticles: $failureOrSucceedArticles, isLoading: $isLoading, isStoredLocally: $isStoredLocally)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPageStateImpl &&
            (identical(
                    other.failureOrSucceedArticles, failureOrSucceedArticles) ||
                other.failureOrSucceedArticles == failureOrSucceedArticles) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isStoredLocally, isStoredLocally) ||
                other.isStoredLocally == isStoredLocally));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failureOrSucceedArticles, isLoading, isStoredLocally);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPageStateImplCopyWith<_$DetailPageStateImpl> get copyWith =>
      __$$DetailPageStateImplCopyWithImpl<_$DetailPageStateImpl>(
          this, _$identity);
}

abstract class _DetailPageState extends DetailPageState {
  const factory _DetailPageState(
      {required final Option<Either<AppFailure, List<String>>>
          failureOrSucceedArticles,
      required final bool isLoading,
      required final bool isStoredLocally}) = _$DetailPageStateImpl;
  const _DetailPageState._() : super._();

  @override
  Option<Either<AppFailure, List<String>>> get failureOrSucceedArticles;
  @override
  bool get isLoading;
  @override
  bool get isStoredLocally;
  @override
  @JsonKey(ignore: true)
  _$$DetailPageStateImplCopyWith<_$DetailPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
