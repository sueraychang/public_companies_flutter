// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndustryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIndustries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIndustries value) getIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetIndustries value)? getIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIndustries value)? getIndustries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryEventCopyWith<$Res> {
  factory $IndustryEventCopyWith(
          IndustryEvent value, $Res Function(IndustryEvent) then) =
      _$IndustryEventCopyWithImpl<$Res, IndustryEvent>;
}

/// @nodoc
class _$IndustryEventCopyWithImpl<$Res, $Val extends IndustryEvent>
    implements $IndustryEventCopyWith<$Res> {
  _$IndustryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetIndustriesImplCopyWith<$Res> {
  factory _$$GetIndustriesImplCopyWith(
          _$GetIndustriesImpl value, $Res Function(_$GetIndustriesImpl) then) =
      __$$GetIndustriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIndustriesImplCopyWithImpl<$Res>
    extends _$IndustryEventCopyWithImpl<$Res, _$GetIndustriesImpl>
    implements _$$GetIndustriesImplCopyWith<$Res> {
  __$$GetIndustriesImplCopyWithImpl(
      _$GetIndustriesImpl _value, $Res Function(_$GetIndustriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetIndustriesImpl implements GetIndustries {
  const _$GetIndustriesImpl();

  @override
  String toString() {
    return 'IndustryEvent.getIndustries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetIndustriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIndustries,
  }) {
    return getIndustries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getIndustries,
  }) {
    return getIndustries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIndustries,
    required TResult orElse(),
  }) {
    if (getIndustries != null) {
      return getIndustries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIndustries value) getIndustries,
  }) {
    return getIndustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetIndustries value)? getIndustries,
  }) {
    return getIndustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIndustries value)? getIndustries,
    required TResult orElse(),
  }) {
    if (getIndustries != null) {
      return getIndustries(this);
    }
    return orElse();
  }
}

abstract class GetIndustries implements IndustryEvent {
  const factory GetIndustries() = _$GetIndustriesImpl;
}

/// @nodoc
mixin _$IndustryState<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(E e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(E e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(E e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T, E> value) loading,
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T, E> value)? loading,
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T, E> value)? loading,
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryStateCopyWith<T, E, $Res> {
  factory $IndustryStateCopyWith(
          IndustryState<T, E> value, $Res Function(IndustryState<T, E>) then) =
      _$IndustryStateCopyWithImpl<T, E, $Res, IndustryState<T, E>>;
}

/// @nodoc
class _$IndustryStateCopyWithImpl<T, E, $Res, $Val extends IndustryState<T, E>>
    implements $IndustryStateCopyWith<T, E, $Res> {
  _$IndustryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, E, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T, E> value, $Res Function(_$LoadingImpl<T, E>) then) =
      __$$LoadingImplCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, E, $Res>
    extends _$IndustryStateCopyWithImpl<T, E, $Res, _$LoadingImpl<T, E>>
    implements _$$LoadingImplCopyWith<T, E, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T, E> _value, $Res Function(_$LoadingImpl<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T, E> implements Loading<T, E> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'IndustryState<$T, $E>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(E e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(E e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(E e)? failure,
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
    required TResult Function(Loading<T, E> value) loading,
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T, E> value)? loading,
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T, E> value)? loading,
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T, E> implements IndustryState<T, E> {
  const factory Loading() = _$LoadingImpl<T, E>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, E, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T, E> value, $Res Function(_$SuccessImpl<T, E>) then) =
      __$$SuccessImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, E, $Res>
    extends _$IndustryStateCopyWithImpl<T, E, $Res, _$SuccessImpl<T, E>>
    implements _$$SuccessImplCopyWith<T, E, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T, E> _value, $Res Function(_$SuccessImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T, E> implements Success<T, E> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'IndustryState<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, E, _$SuccessImpl<T, E>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, E, _$SuccessImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(E e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(E e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(E e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T, E> value) loading,
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T, E> value)? loading,
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T, E> value)? loading,
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, E> implements IndustryState<T, E> {
  const factory Success(final T data) = _$SuccessImpl<T, E>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, E, _$SuccessImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, E, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T, E> value, $Res Function(_$FailureImpl<T, E>) then) =
      __$$FailureImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E e});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, E, $Res>
    extends _$IndustryStateCopyWithImpl<T, E, $Res, _$FailureImpl<T, E>>
    implements _$$FailureImplCopyWith<T, E, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T, E> _value, $Res Function(_$FailureImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$FailureImpl<T, E>(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T, E> implements Failure<T, E> {
  const _$FailureImpl(this.e);

  @override
  final E e;

  @override
  String toString() {
    return 'IndustryState<$T, $E>.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T, E> &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, E, _$FailureImpl<T, E>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, E, _$FailureImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(E e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(E e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(E e)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T, E> value) loading,
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading<T, E> value)? loading,
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T, E> value)? loading,
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, E> implements IndustryState<T, E> {
  const factory Failure(final E e) = _$FailureImpl<T, E>;

  E get e;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, E, _$FailureImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
