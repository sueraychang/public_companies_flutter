// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyEvent {
  String get companyCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyCode) getCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyCode)? getCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyCode)? getCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompany value) getCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompany value)? getCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompany value)? getCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyEventCopyWith<CompanyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEventCopyWith<$Res> {
  factory $CompanyEventCopyWith(
          CompanyEvent value, $Res Function(CompanyEvent) then) =
      _$CompanyEventCopyWithImpl<$Res, CompanyEvent>;
  @useResult
  $Res call({String companyCode});
}

/// @nodoc
class _$CompanyEventCopyWithImpl<$Res, $Val extends CompanyEvent>
    implements $CompanyEventCopyWith<$Res> {
  _$CompanyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyCode = null,
  }) {
    return _then(_value.copyWith(
      companyCode: null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCompanyImplCopyWith<$Res>
    implements $CompanyEventCopyWith<$Res> {
  factory _$$GetCompanyImplCopyWith(
          _$GetCompanyImpl value, $Res Function(_$GetCompanyImpl) then) =
      __$$GetCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyCode});
}

/// @nodoc
class __$$GetCompanyImplCopyWithImpl<$Res>
    extends _$CompanyEventCopyWithImpl<$Res, _$GetCompanyImpl>
    implements _$$GetCompanyImplCopyWith<$Res> {
  __$$GetCompanyImplCopyWithImpl(
      _$GetCompanyImpl _value, $Res Function(_$GetCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyCode = null,
  }) {
    return _then(_$GetCompanyImpl(
      null == companyCode
          ? _value.companyCode
          : companyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCompanyImpl implements GetCompany {
  const _$GetCompanyImpl(this.companyCode);

  @override
  final String companyCode;

  @override
  String toString() {
    return 'CompanyEvent.getCompany(companyCode: $companyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompanyImpl &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompanyImplCopyWith<_$GetCompanyImpl> get copyWith =>
      __$$GetCompanyImplCopyWithImpl<_$GetCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyCode) getCompany,
  }) {
    return getCompany(companyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyCode)? getCompany,
  }) {
    return getCompany?.call(companyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyCode)? getCompany,
    required TResult orElse(),
  }) {
    if (getCompany != null) {
      return getCompany(companyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompany value) getCompany,
  }) {
    return getCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompany value)? getCompany,
  }) {
    return getCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompany value)? getCompany,
    required TResult orElse(),
  }) {
    if (getCompany != null) {
      return getCompany(this);
    }
    return orElse();
  }
}

abstract class GetCompany implements CompanyEvent {
  const factory GetCompany(final String companyCode) = _$GetCompanyImpl;

  @override
  String get companyCode;
  @override
  @JsonKey(ignore: true)
  _$$GetCompanyImplCopyWith<_$GetCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
