// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LikesPageState {
  List<Book> get likedBooks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikesPageStateCopyWith<LikesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesPageStateCopyWith<$Res> {
  factory $LikesPageStateCopyWith(
          LikesPageState value, $Res Function(LikesPageState) then) =
      _$LikesPageStateCopyWithImpl<$Res, LikesPageState>;
  @useResult
  $Res call({List<Book> likedBooks, bool isLoading});
}

/// @nodoc
class _$LikesPageStateCopyWithImpl<$Res, $Val extends LikesPageState>
    implements $LikesPageStateCopyWith<$Res> {
  _$LikesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedBooks = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      likedBooks: null == likedBooks
          ? _value.likedBooks
          : likedBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikesPageStateImplCopyWith<$Res>
    implements $LikesPageStateCopyWith<$Res> {
  factory _$$LikesPageStateImplCopyWith(_$LikesPageStateImpl value,
          $Res Function(_$LikesPageStateImpl) then) =
      __$$LikesPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> likedBooks, bool isLoading});
}

/// @nodoc
class __$$LikesPageStateImplCopyWithImpl<$Res>
    extends _$LikesPageStateCopyWithImpl<$Res, _$LikesPageStateImpl>
    implements _$$LikesPageStateImplCopyWith<$Res> {
  __$$LikesPageStateImplCopyWithImpl(
      _$LikesPageStateImpl _value, $Res Function(_$LikesPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedBooks = null,
    Object? isLoading = null,
  }) {
    return _then(_$LikesPageStateImpl(
      likedBooks: null == likedBooks
          ? _value._likedBooks
          : likedBooks // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LikesPageStateImpl extends _LikesPageState {
  const _$LikesPageStateImpl(
      {required final List<Book> likedBooks, required this.isLoading})
      : _likedBooks = likedBooks,
        super._();

  final List<Book> _likedBooks;
  @override
  List<Book> get likedBooks {
    if (_likedBooks is EqualUnmodifiableListView) return _likedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedBooks);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LikesPageState(likedBooks: $likedBooks, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikesPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._likedBooks, _likedBooks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_likedBooks), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesPageStateImplCopyWith<_$LikesPageStateImpl> get copyWith =>
      __$$LikesPageStateImplCopyWithImpl<_$LikesPageStateImpl>(
          this, _$identity);
}

abstract class _LikesPageState extends LikesPageState {
  const factory _LikesPageState(
      {required final List<Book> likedBooks,
      required final bool isLoading}) = _$LikesPageStateImpl;
  const _LikesPageState._() : super._();

  @override
  List<Book> get likedBooks;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LikesPageStateImplCopyWith<_$LikesPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
