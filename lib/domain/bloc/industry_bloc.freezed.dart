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
