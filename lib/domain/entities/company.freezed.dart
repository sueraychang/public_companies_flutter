// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  @HiveField(0)
  @JsonKey(name: '公司代號')
  String get code => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: '公司名稱')
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: '公司簡稱')
  String get abbreviation => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: '產業別')
  String get industryCode => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: '住址')
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: '公司代號') String code,
      @HiveField(1) @JsonKey(name: '公司名稱') String name,
      @HiveField(2) @JsonKey(name: '公司簡稱') String abbreviation,
      @HiveField(3) @JsonKey(name: '產業別') String industryCode,
      @HiveField(4) @JsonKey(name: '住址') String address});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? abbreviation = null,
    Object? industryCode = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      industryCode: null == industryCode
          ? _value.industryCode
          : industryCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: '公司代號') String code,
      @HiveField(1) @JsonKey(name: '公司名稱') String name,
      @HiveField(2) @JsonKey(name: '公司簡稱') String abbreviation,
      @HiveField(3) @JsonKey(name: '產業別') String industryCode,
      @HiveField(4) @JsonKey(name: '住址') String address});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? abbreviation = null,
    Object? industryCode = null,
    Object? address = null,
  }) {
    return _then(_$CompanyImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      industryCode: null == industryCode
          ? _value.industryCode
          : industryCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'CompanyAdapter')
class _$CompanyImpl with DiagnosticableTreeMixin implements _Company {
  const _$CompanyImpl(
      {@HiveField(0) @JsonKey(name: '公司代號') this.code = '',
      @HiveField(1) @JsonKey(name: '公司名稱') this.name = '',
      @HiveField(2) @JsonKey(name: '公司簡稱') this.abbreviation = '',
      @HiveField(3) @JsonKey(name: '產業別') this.industryCode = '',
      @HiveField(4) @JsonKey(name: '住址') this.address = ''});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: '公司代號')
  final String code;
  @override
  @HiveField(1)
  @JsonKey(name: '公司名稱')
  final String name;
  @override
  @HiveField(2)
  @JsonKey(name: '公司簡稱')
  final String abbreviation;
  @override
  @HiveField(3)
  @JsonKey(name: '產業別')
  final String industryCode;
  @override
  @HiveField(4)
  @JsonKey(name: '住址')
  final String address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Company(code: $code, name: $name, abbreviation: $abbreviation, industryCode: $industryCode, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Company'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('abbreviation', abbreviation))
      ..add(DiagnosticsProperty('industryCode', industryCode))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.industryCode, industryCode) ||
                other.industryCode == industryCode) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, abbreviation, industryCode, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {@HiveField(0) @JsonKey(name: '公司代號') final String code,
      @HiveField(1) @JsonKey(name: '公司名稱') final String name,
      @HiveField(2) @JsonKey(name: '公司簡稱') final String abbreviation,
      @HiveField(3) @JsonKey(name: '產業別') final String industryCode,
      @HiveField(4) @JsonKey(name: '住址') final String address}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: '公司代號')
  String get code;
  @override
  @HiveField(1)
  @JsonKey(name: '公司名稱')
  String get name;
  @override
  @HiveField(2)
  @JsonKey(name: '公司簡稱')
  String get abbreviation;
  @override
  @HiveField(3)
  @JsonKey(name: '產業別')
  String get industryCode;
  @override
  @HiveField(4)
  @JsonKey(name: '住址')
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}