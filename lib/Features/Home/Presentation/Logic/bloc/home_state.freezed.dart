// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T resonse) getHomeDataSuccess,
    required TResult Function(String errorMessage) getHomeDataFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T resonse)? getHomeDataSuccess,
    TResult? Function(String errorMessage)? getHomeDataFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T resonse)? getHomeDataSuccess,
    TResult Function(String errorMessage)? getHomeDataFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeLoading<T> value) loading,
    required TResult Function(GetHomeDataSuccess<T> value) getHomeDataSuccess,
    required TResult Function(GetHomeDataFail<T> value) getHomeDataFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeLoading<T> value)? loading,
    TResult? Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult? Function(GetHomeDataFail<T> value)? getHomeDataFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeLoading<T> value)? loading,
    TResult Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult Function(GetHomeDataFail<T> value)? getHomeDataFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T resonse) getHomeDataSuccess,
    required TResult Function(String errorMessage) getHomeDataFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T resonse)? getHomeDataSuccess,
    TResult? Function(String errorMessage)? getHomeDataFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T resonse)? getHomeDataSuccess,
    TResult Function(String errorMessage)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeLoading<T> value) loading,
    required TResult Function(GetHomeDataSuccess<T> value) getHomeDataSuccess,
    required TResult Function(GetHomeDataFail<T> value) getHomeDataFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeLoading<T> value)? loading,
    TResult? Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult? Function(GetHomeDataFail<T> value)? getHomeDataFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeLoading<T> value)? loading,
    TResult Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult Function(GetHomeDataFail<T> value)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<T, $Res> {
  factory _$$HomeLoadingImplCopyWith(_$HomeLoadingImpl<T> value,
          $Res Function(_$HomeLoadingImpl<T>) then) =
      __$$HomeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeLoadingImpl<T>>
    implements _$$HomeLoadingImplCopyWith<T, $Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl<T> _value, $Res Function(_$HomeLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeLoadingImpl<T> implements HomeLoading<T> {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T resonse) getHomeDataSuccess,
    required TResult Function(String errorMessage) getHomeDataFail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T resonse)? getHomeDataSuccess,
    TResult? Function(String errorMessage)? getHomeDataFail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T resonse)? getHomeDataSuccess,
    TResult Function(String errorMessage)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeLoading<T> value) loading,
    required TResult Function(GetHomeDataSuccess<T> value) getHomeDataSuccess,
    required TResult Function(GetHomeDataFail<T> value) getHomeDataFail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeLoading<T> value)? loading,
    TResult? Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult? Function(GetHomeDataFail<T> value)? getHomeDataFail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeLoading<T> value)? loading,
    TResult Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult Function(GetHomeDataFail<T> value)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading<T> implements HomeState<T> {
  const factory HomeLoading() = _$HomeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetHomeDataSuccessImplCopyWith<T, $Res> {
  factory _$$GetHomeDataSuccessImplCopyWith(_$GetHomeDataSuccessImpl<T> value,
          $Res Function(_$GetHomeDataSuccessImpl<T>) then) =
      __$$GetHomeDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T resonse});
}

/// @nodoc
class __$$GetHomeDataSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$GetHomeDataSuccessImpl<T>>
    implements _$$GetHomeDataSuccessImplCopyWith<T, $Res> {
  __$$GetHomeDataSuccessImplCopyWithImpl(_$GetHomeDataSuccessImpl<T> _value,
      $Res Function(_$GetHomeDataSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resonse = freezed,
  }) {
    return _then(_$GetHomeDataSuccessImpl<T>(
      resonse: freezed == resonse
          ? _value.resonse
          : resonse // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetHomeDataSuccessImpl<T> implements GetHomeDataSuccess<T> {
  const _$GetHomeDataSuccessImpl({required this.resonse});

  @override
  final T resonse;

  @override
  String toString() {
    return 'HomeState<$T>.getHomeDataSuccess(resonse: $resonse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeDataSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.resonse, resonse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resonse));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeDataSuccessImplCopyWith<T, _$GetHomeDataSuccessImpl<T>>
      get copyWith => __$$GetHomeDataSuccessImplCopyWithImpl<T,
          _$GetHomeDataSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T resonse) getHomeDataSuccess,
    required TResult Function(String errorMessage) getHomeDataFail,
  }) {
    return getHomeDataSuccess(resonse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T resonse)? getHomeDataSuccess,
    TResult? Function(String errorMessage)? getHomeDataFail,
  }) {
    return getHomeDataSuccess?.call(resonse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T resonse)? getHomeDataSuccess,
    TResult Function(String errorMessage)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (getHomeDataSuccess != null) {
      return getHomeDataSuccess(resonse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeLoading<T> value) loading,
    required TResult Function(GetHomeDataSuccess<T> value) getHomeDataSuccess,
    required TResult Function(GetHomeDataFail<T> value) getHomeDataFail,
  }) {
    return getHomeDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeLoading<T> value)? loading,
    TResult? Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult? Function(GetHomeDataFail<T> value)? getHomeDataFail,
  }) {
    return getHomeDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeLoading<T> value)? loading,
    TResult Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult Function(GetHomeDataFail<T> value)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (getHomeDataSuccess != null) {
      return getHomeDataSuccess(this);
    }
    return orElse();
  }
}

abstract class GetHomeDataSuccess<T> implements HomeState<T> {
  const factory GetHomeDataSuccess({required final T resonse}) =
      _$GetHomeDataSuccessImpl<T>;

  T get resonse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHomeDataSuccessImplCopyWith<T, _$GetHomeDataSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeDataFailImplCopyWith<T, $Res> {
  factory _$$GetHomeDataFailImplCopyWith(_$GetHomeDataFailImpl<T> value,
          $Res Function(_$GetHomeDataFailImpl<T>) then) =
      __$$GetHomeDataFailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GetHomeDataFailImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$GetHomeDataFailImpl<T>>
    implements _$$GetHomeDataFailImplCopyWith<T, $Res> {
  __$$GetHomeDataFailImplCopyWithImpl(_$GetHomeDataFailImpl<T> _value,
      $Res Function(_$GetHomeDataFailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GetHomeDataFailImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHomeDataFailImpl<T> implements GetHomeDataFail<T> {
  const _$GetHomeDataFailImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState<$T>.getHomeDataFail(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeDataFailImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeDataFailImplCopyWith<T, _$GetHomeDataFailImpl<T>> get copyWith =>
      __$$GetHomeDataFailImplCopyWithImpl<T, _$GetHomeDataFailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T resonse) getHomeDataSuccess,
    required TResult Function(String errorMessage) getHomeDataFail,
  }) {
    return getHomeDataFail(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T resonse)? getHomeDataSuccess,
    TResult? Function(String errorMessage)? getHomeDataFail,
  }) {
    return getHomeDataFail?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T resonse)? getHomeDataSuccess,
    TResult Function(String errorMessage)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (getHomeDataFail != null) {
      return getHomeDataFail(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeLoading<T> value) loading,
    required TResult Function(GetHomeDataSuccess<T> value) getHomeDataSuccess,
    required TResult Function(GetHomeDataFail<T> value) getHomeDataFail,
  }) {
    return getHomeDataFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeLoading<T> value)? loading,
    TResult? Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult? Function(GetHomeDataFail<T> value)? getHomeDataFail,
  }) {
    return getHomeDataFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeLoading<T> value)? loading,
    TResult Function(GetHomeDataSuccess<T> value)? getHomeDataSuccess,
    TResult Function(GetHomeDataFail<T> value)? getHomeDataFail,
    required TResult orElse(),
  }) {
    if (getHomeDataFail != null) {
      return getHomeDataFail(this);
    }
    return orElse();
  }
}

abstract class GetHomeDataFail<T> implements HomeState<T> {
  const factory GetHomeDataFail({required final String errorMessage}) =
      _$GetHomeDataFailImpl<T>;

  String get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHomeDataFailImplCopyWith<T, _$GetHomeDataFailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
