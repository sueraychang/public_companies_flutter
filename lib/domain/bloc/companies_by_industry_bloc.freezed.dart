// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_by_industry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompaniesByIndustryEvent {
  String get industryCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String industryCode) getCompanies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String industryCode)? getCompanies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String industryCode)? getCompanies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompanies value) getCompanies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompanies value)? getCompanies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompanies value)? getCompanies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompaniesByIndustryEventCopyWith<CompaniesByIndustryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesByIndustryEventCopyWith<$Res> {
  factory $CompaniesByIndustryEventCopyWith(CompaniesByIndustryEvent value,
          $Res Function(CompaniesByIndustryEvent) then) =
      _$CompaniesByIndustryEventCopyWithImpl<$Res, CompaniesByIndustryEvent>;
  @useResult
  $Res call({String industryCode});
}

/// @nodoc
class _$CompaniesByIndustryEventCopyWithImpl<$Res,
        $Val extends CompaniesByIndustryEvent>
    implements $CompaniesByIndustryEventCopyWith<$Res> {
  _$CompaniesByIndustryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industryCode = null,
  }) {
    return _then(_value.copyWith(
      industryCode: null == industryCode
          ? _value.industryCode
          : industryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCompaniesImplCopyWith<$Res>
    implements $CompaniesByIndustryEventCopyWith<$Res> {
  factory _$$GetCompaniesImplCopyWith(
          _$GetCompaniesImpl value, $Res Function(_$GetCompaniesImpl) then) =
      __$$GetCompaniesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String industryCode});
}

/// @nodoc
class __$$GetCompaniesImplCopyWithImpl<$Res>
    extends _$CompaniesByIndustryEventCopyWithImpl<$Res, _$GetCompaniesImpl>
    implements _$$GetCompaniesImplCopyWith<$Res> {
  __$$GetCompaniesImplCopyWithImpl(
      _$GetCompaniesImpl _value, $Res Function(_$GetCompaniesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industryCode = null,
  }) {
    return _then(_$GetCompaniesImpl(
      null == industryCode
          ? _value.industryCode
          : industryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCompaniesImpl implements GetCompanies {
  const _$GetCompaniesImpl(this.industryCode);

  @override
  final String industryCode;

  @override
  String toString() {
    return 'CompaniesByIndustryEvent.getCompanies(industryCode: $industryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompaniesImpl &&
            (identical(other.industryCode, industryCode) ||
                other.industryCode == industryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, industryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompaniesImplCopyWith<_$GetCompaniesImpl> get copyWith =>
      __$$GetCompaniesImplCopyWithImpl<_$GetCompaniesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String industryCode) getCompanies,
  }) {
    return getCompanies(industryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String industryCode)? getCompanies,
  }) {
    return getCompanies?.call(industryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String industryCode)? getCompanies,
    required TResult orElse(),
  }) {
    if (getCompanies != null) {
      return getCompanies(industryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCompanies value) getCompanies,
  }) {
    return getCompanies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCompanies value)? getCompanies,
  }) {
    return getCompanies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCompanies value)? getCompanies,
    required TResult orElse(),
  }) {
    if (getCompanies != null) {
      return getCompanies(this);
    }
    return orElse();
  }
}

abstract class GetCompanies implements CompaniesByIndustryEvent {
  const factory GetCompanies(final String industryCode) = _$GetCompaniesImpl;

  @override
  String get industryCode;
  @override
  @JsonKey(ignore: true)
  _$$GetCompaniesImplCopyWith<_$GetCompaniesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
