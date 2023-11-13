// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaunchEvent {
  bool get forceUpdate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getCompaniesAndIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getCompaniesAndIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getCompaniesAndIndustries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompaniesAndIndustries value)
        getCompaniesAndIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompaniesAndIndustries value)?
        getCompaniesAndIndustries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompaniesAndIndustries value)?
        getCompaniesAndIndustries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchEventCopyWith<LaunchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchEventCopyWith<$Res> {
  factory $LaunchEventCopyWith(
          LaunchEvent value, $Res Function(LaunchEvent) then) =
      _$LaunchEventCopyWithImpl<$Res, LaunchEvent>;
  @useResult
  $Res call({bool forceUpdate});
}

/// @nodoc
class _$LaunchEventCopyWithImpl<$Res, $Val extends LaunchEvent>
    implements $LaunchEventCopyWith<$Res> {
  _$LaunchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceUpdate = null,
  }) {
    return _then(_value.copyWith(
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCompaniesAndIndustriesImplCopyWith<$Res>
    implements $LaunchEventCopyWith<$Res> {
  factory _$$GetCompaniesAndIndustriesImplCopyWith(
          _$GetCompaniesAndIndustriesImpl value,
          $Res Function(_$GetCompaniesAndIndustriesImpl) then) =
      __$$GetCompaniesAndIndustriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool forceUpdate});
}

/// @nodoc
class __$$GetCompaniesAndIndustriesImplCopyWithImpl<$Res>
    extends _$LaunchEventCopyWithImpl<$Res, _$GetCompaniesAndIndustriesImpl>
    implements _$$GetCompaniesAndIndustriesImplCopyWith<$Res> {
  __$$GetCompaniesAndIndustriesImplCopyWithImpl(
      _$GetCompaniesAndIndustriesImpl _value,
      $Res Function(_$GetCompaniesAndIndustriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceUpdate = null,
  }) {
    return _then(_$GetCompaniesAndIndustriesImpl(
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetCompaniesAndIndustriesImpl implements GetCompaniesAndIndustries {
  const _$GetCompaniesAndIndustriesImpl({required this.forceUpdate});

  @override
  final bool forceUpdate;

  @override
  String toString() {
    return 'LaunchEvent.getCompaniesAndIndustries(forceUpdate: $forceUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompaniesAndIndustriesImpl &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forceUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompaniesAndIndustriesImplCopyWith<_$GetCompaniesAndIndustriesImpl>
      get copyWith => __$$GetCompaniesAndIndustriesImplCopyWithImpl<
          _$GetCompaniesAndIndustriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceUpdate) getCompaniesAndIndustries,
  }) {
    return getCompaniesAndIndustries(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceUpdate)? getCompaniesAndIndustries,
  }) {
    return getCompaniesAndIndustries?.call(forceUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceUpdate)? getCompaniesAndIndustries,
    required TResult orElse(),
  }) {
    if (getCompaniesAndIndustries != null) {
      return getCompaniesAndIndustries(forceUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompaniesAndIndustries value)
        getCompaniesAndIndustries,
  }) {
    return getCompaniesAndIndustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompaniesAndIndustries value)?
        getCompaniesAndIndustries,
  }) {
    return getCompaniesAndIndustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompaniesAndIndustries value)?
        getCompaniesAndIndustries,
    required TResult orElse(),
  }) {
    if (getCompaniesAndIndustries != null) {
      return getCompaniesAndIndustries(this);
    }
    return orElse();
  }
}

abstract class GetCompaniesAndIndustries implements LaunchEvent {
  const factory GetCompaniesAndIndustries({required final bool forceUpdate}) =
      _$GetCompaniesAndIndustriesImpl;

  @override
  bool get forceUpdate;
  @override
  @JsonKey(ignore: true)
  _$$GetCompaniesAndIndustriesImplCopyWith<_$GetCompaniesAndIndustriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
