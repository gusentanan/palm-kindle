// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  Option<Either<AppFailure, List<Results>>> get failureOrSucceedArticles =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles,
      bool isLoading});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      failureOrSucceedArticles: null == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles
          : failureOrSucceedArticles // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<Results>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles,
      bool isLoading});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceedArticles = null,
    Object? isLoading = null,
  }) {
    return _then(_$HomePageStateImpl(
      failureOrSucceedArticles: null == failureOrSucceedArticles
          ? _value.failureOrSucceedArticles
          : failureOrSucceedArticles // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<Results>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl extends _HomePageState {
  const _$HomePageStateImpl(
      {required this.failureOrSucceedArticles, required this.isLoading})
      : super._();

  @override
  final Option<Either<AppFailure, List<Results>>> failureOrSucceedArticles;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomePageState(failureOrSucceedArticles: $failureOrSucceedArticles, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(
                    other.failureOrSucceedArticles, failureOrSucceedArticles) ||
                other.failureOrSucceedArticles == failureOrSucceedArticles) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failureOrSucceedArticles, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState extends HomePageState {
  const factory _HomePageState(
      {required final Option<Either<AppFailure, List<Results>>>
          failureOrSucceedArticles,
      required final bool isLoading}) = _$HomePageStateImpl;
  const _HomePageState._() : super._();

  @override
  Option<Either<AppFailure, List<Results>>> get failureOrSucceedArticles;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
