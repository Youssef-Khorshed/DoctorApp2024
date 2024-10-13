// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getDoctorsS,
    required TResult Function(String name) searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getDoctorsS,
    TResult? Function(String name)? searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getDoctorsS,
    TResult Function(String name)? searchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<T> value) started,
    required TResult Function(GetDoctors<T> value) getDoctorsS,
    required TResult Function(SearchDoctor<T> value) searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<T> value)? started,
    TResult? Function(GetDoctors<T> value)? getDoctorsS,
    TResult? Function(SearchDoctor<T> value)? searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<T> value)? started,
    TResult Function(GetDoctors<T> value)? getDoctorsS,
    TResult Function(SearchDoctor<T> value)? searchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<T, $Res> {
  factory $HomeEventCopyWith(
          HomeEvent<T> value, $Res Function(HomeEvent<T>) then) =
      _$HomeEventCopyWithImpl<T, $Res, HomeEvent<T>>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<T, $Res, $Val extends HomeEvent<T>>
    implements $HomeEventCopyWith<T, $Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<T, $Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl<T> value, $Res Function(_$StartedImpl<T>) then) =
      __$$StartedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<T, $Res>
    extends _$HomeEventCopyWithImpl<T, $Res, _$StartedImpl<T>>
    implements _$$StartedImplCopyWith<T, $Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl<T> _value, $Res Function(_$StartedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl<T> implements _Started<T> {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent<$T>.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getDoctorsS,
    required TResult Function(String name) searchDoctor,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getDoctorsS,
    TResult? Function(String name)? searchDoctor,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getDoctorsS,
    TResult Function(String name)? searchDoctor,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<T> value) started,
    required TResult Function(GetDoctors<T> value) getDoctorsS,
    required TResult Function(SearchDoctor<T> value) searchDoctor,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<T> value)? started,
    TResult? Function(GetDoctors<T> value)? getDoctorsS,
    TResult? Function(SearchDoctor<T> value)? searchDoctor,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<T> value)? started,
    TResult Function(GetDoctors<T> value)? getDoctorsS,
    TResult Function(SearchDoctor<T> value)? searchDoctor,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started<T> implements HomeEvent<T> {
  const factory _Started() = _$StartedImpl<T>;
}

/// @nodoc
abstract class _$$GetDoctorsImplCopyWith<T, $Res> {
  factory _$$GetDoctorsImplCopyWith(
          _$GetDoctorsImpl<T> value, $Res Function(_$GetDoctorsImpl<T>) then) =
      __$$GetDoctorsImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetDoctorsImplCopyWithImpl<T, $Res>
    extends _$HomeEventCopyWithImpl<T, $Res, _$GetDoctorsImpl<T>>
    implements _$$GetDoctorsImplCopyWith<T, $Res> {
  __$$GetDoctorsImplCopyWithImpl(
      _$GetDoctorsImpl<T> _value, $Res Function(_$GetDoctorsImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDoctorsImpl<T> implements GetDoctors<T> {
  const _$GetDoctorsImpl();

  @override
  String toString() {
    return 'HomeEvent<$T>.getDoctorsS()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDoctorsImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getDoctorsS,
    required TResult Function(String name) searchDoctor,
  }) {
    return getDoctorsS();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getDoctorsS,
    TResult? Function(String name)? searchDoctor,
  }) {
    return getDoctorsS?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getDoctorsS,
    TResult Function(String name)? searchDoctor,
    required TResult orElse(),
  }) {
    if (getDoctorsS != null) {
      return getDoctorsS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<T> value) started,
    required TResult Function(GetDoctors<T> value) getDoctorsS,
    required TResult Function(SearchDoctor<T> value) searchDoctor,
  }) {
    return getDoctorsS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<T> value)? started,
    TResult? Function(GetDoctors<T> value)? getDoctorsS,
    TResult? Function(SearchDoctor<T> value)? searchDoctor,
  }) {
    return getDoctorsS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<T> value)? started,
    TResult Function(GetDoctors<T> value)? getDoctorsS,
    TResult Function(SearchDoctor<T> value)? searchDoctor,
    required TResult orElse(),
  }) {
    if (getDoctorsS != null) {
      return getDoctorsS(this);
    }
    return orElse();
  }
}

abstract class GetDoctors<T> implements HomeEvent<T> {
  const factory GetDoctors() = _$GetDoctorsImpl<T>;
}

/// @nodoc
abstract class _$$SearchDoctorImplCopyWith<T, $Res> {
  factory _$$SearchDoctorImplCopyWith(_$SearchDoctorImpl<T> value,
          $Res Function(_$SearchDoctorImpl<T>) then) =
      __$$SearchDoctorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchDoctorImplCopyWithImpl<T, $Res>
    extends _$HomeEventCopyWithImpl<T, $Res, _$SearchDoctorImpl<T>>
    implements _$$SearchDoctorImplCopyWith<T, $Res> {
  __$$SearchDoctorImplCopyWithImpl(
      _$SearchDoctorImpl<T> _value, $Res Function(_$SearchDoctorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchDoctorImpl<T>(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDoctorImpl<T> implements SearchDoctor<T> {
  const _$SearchDoctorImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'HomeEvent<$T>.searchDoctor(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDoctorImpl<T> &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDoctorImplCopyWith<T, _$SearchDoctorImpl<T>> get copyWith =>
      __$$SearchDoctorImplCopyWithImpl<T, _$SearchDoctorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getDoctorsS,
    required TResult Function(String name) searchDoctor,
  }) {
    return searchDoctor(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getDoctorsS,
    TResult? Function(String name)? searchDoctor,
  }) {
    return searchDoctor?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getDoctorsS,
    TResult Function(String name)? searchDoctor,
    required TResult orElse(),
  }) {
    if (searchDoctor != null) {
      return searchDoctor(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started<T> value) started,
    required TResult Function(GetDoctors<T> value) getDoctorsS,
    required TResult Function(SearchDoctor<T> value) searchDoctor,
  }) {
    return searchDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started<T> value)? started,
    TResult? Function(GetDoctors<T> value)? getDoctorsS,
    TResult? Function(SearchDoctor<T> value)? searchDoctor,
  }) {
    return searchDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started<T> value)? started,
    TResult Function(GetDoctors<T> value)? getDoctorsS,
    TResult Function(SearchDoctor<T> value)? searchDoctor,
    required TResult orElse(),
  }) {
    if (searchDoctor != null) {
      return searchDoctor(this);
    }
    return orElse();
  }
}

abstract class SearchDoctor<T> implements HomeEvent<T> {
  const factory SearchDoctor({required final String name}) =
      _$SearchDoctorImpl<T>;

  String get name;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDoctorImplCopyWith<T, _$SearchDoctorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
