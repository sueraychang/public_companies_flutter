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
  @HiveField(5)
  @JsonKey(name: '營利事業統一編號')
  String get invoiceNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: '董事長')
  String get chairman => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: '總經理')
  String get president => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: '總機電話')
  String get operator => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: '成立日期')
  String get establishmentDate => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: '上市日期')
  String get listingDate => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: '普通股每股面額')
  String get parValuePerShare => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: '私募股數')
  String get privateEquilty => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: '特別股')
  String get preferredStock => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: '網址')
  String get website => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: '已發行普通股數或TDR原股發行股數')
  String get authorizedStock => throw _privateConstructorUsedError;

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
      @HiveField(4) @JsonKey(name: '住址') String address,
      @HiveField(5) @JsonKey(name: '營利事業統一編號') String invoiceNumber,
      @HiveField(6) @JsonKey(name: '董事長') String chairman,
      @HiveField(7) @JsonKey(name: '總經理') String president,
      @HiveField(8) @JsonKey(name: '總機電話') String operator,
      @HiveField(9) @JsonKey(name: '成立日期') String establishmentDate,
      @HiveField(10) @JsonKey(name: '上市日期') String listingDate,
      @HiveField(11) @JsonKey(name: '普通股每股面額') String parValuePerShare,
      @HiveField(12) @JsonKey(name: '私募股數') String privateEquilty,
      @HiveField(13) @JsonKey(name: '特別股') String preferredStock,
      @HiveField(14) @JsonKey(name: '網址') String website,
      @HiveField(15)
      @JsonKey(name: '已發行普通股數或TDR原股發行股數')
      String authorizedStock});
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
    Object? invoiceNumber = null,
    Object? chairman = null,
    Object? president = null,
    Object? operator = null,
    Object? establishmentDate = null,
    Object? listingDate = null,
    Object? parValuePerShare = null,
    Object? privateEquilty = null,
    Object? preferredStock = null,
    Object? website = null,
    Object? authorizedStock = null,
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
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      chairman: null == chairman
          ? _value.chairman
          : chairman // ignore: cast_nullable_to_non_nullable
              as String,
      president: null == president
          ? _value.president
          : president // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentDate: null == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: null == listingDate
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      parValuePerShare: null == parValuePerShare
          ? _value.parValuePerShare
          : parValuePerShare // ignore: cast_nullable_to_non_nullable
              as String,
      privateEquilty: null == privateEquilty
          ? _value.privateEquilty
          : privateEquilty // ignore: cast_nullable_to_non_nullable
              as String,
      preferredStock: null == preferredStock
          ? _value.preferredStock
          : preferredStock // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedStock: null == authorizedStock
          ? _value.authorizedStock
          : authorizedStock // ignore: cast_nullable_to_non_nullable
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
      @HiveField(4) @JsonKey(name: '住址') String address,
      @HiveField(5) @JsonKey(name: '營利事業統一編號') String invoiceNumber,
      @HiveField(6) @JsonKey(name: '董事長') String chairman,
      @HiveField(7) @JsonKey(name: '總經理') String president,
      @HiveField(8) @JsonKey(name: '總機電話') String operator,
      @HiveField(9) @JsonKey(name: '成立日期') String establishmentDate,
      @HiveField(10) @JsonKey(name: '上市日期') String listingDate,
      @HiveField(11) @JsonKey(name: '普通股每股面額') String parValuePerShare,
      @HiveField(12) @JsonKey(name: '私募股數') String privateEquilty,
      @HiveField(13) @JsonKey(name: '特別股') String preferredStock,
      @HiveField(14) @JsonKey(name: '網址') String website,
      @HiveField(15)
      @JsonKey(name: '已發行普通股數或TDR原股發行股數')
      String authorizedStock});
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
    Object? invoiceNumber = null,
    Object? chairman = null,
    Object? president = null,
    Object? operator = null,
    Object? establishmentDate = null,
    Object? listingDate = null,
    Object? parValuePerShare = null,
    Object? privateEquilty = null,
    Object? preferredStock = null,
    Object? website = null,
    Object? authorizedStock = null,
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
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      chairman: null == chairman
          ? _value.chairman
          : chairman // ignore: cast_nullable_to_non_nullable
              as String,
      president: null == president
          ? _value.president
          : president // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentDate: null == establishmentDate
          ? _value.establishmentDate
          : establishmentDate // ignore: cast_nullable_to_non_nullable
              as String,
      listingDate: null == listingDate
          ? _value.listingDate
          : listingDate // ignore: cast_nullable_to_non_nullable
              as String,
      parValuePerShare: null == parValuePerShare
          ? _value.parValuePerShare
          : parValuePerShare // ignore: cast_nullable_to_non_nullable
              as String,
      privateEquilty: null == privateEquilty
          ? _value.privateEquilty
          : privateEquilty // ignore: cast_nullable_to_non_nullable
              as String,
      preferredStock: null == preferredStock
          ? _value.preferredStock
          : preferredStock // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      authorizedStock: null == authorizedStock
          ? _value.authorizedStock
          : authorizedStock // ignore: cast_nullable_to_non_nullable
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
      @HiveField(4) @JsonKey(name: '住址') this.address = '',
      @HiveField(5) @JsonKey(name: '營利事業統一編號') this.invoiceNumber = '',
      @HiveField(6) @JsonKey(name: '董事長') this.chairman = '',
      @HiveField(7) @JsonKey(name: '總經理') this.president = '',
      @HiveField(8) @JsonKey(name: '總機電話') this.operator = '',
      @HiveField(9) @JsonKey(name: '成立日期') this.establishmentDate = '',
      @HiveField(10) @JsonKey(name: '上市日期') this.listingDate = '',
      @HiveField(11) @JsonKey(name: '普通股每股面額') this.parValuePerShare = '',
      @HiveField(12) @JsonKey(name: '私募股數') this.privateEquilty = '',
      @HiveField(13) @JsonKey(name: '特別股') this.preferredStock = '',
      @HiveField(14) @JsonKey(name: '網址') this.website = '',
      @HiveField(15)
      @JsonKey(name: '已發行普通股數或TDR原股發行股數')
      this.authorizedStock = ''});

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
  @HiveField(5)
  @JsonKey(name: '營利事業統一編號')
  final String invoiceNumber;
  @override
  @HiveField(6)
  @JsonKey(name: '董事長')
  final String chairman;
  @override
  @HiveField(7)
  @JsonKey(name: '總經理')
  final String president;
  @override
  @HiveField(8)
  @JsonKey(name: '總機電話')
  final String operator;
  @override
  @HiveField(9)
  @JsonKey(name: '成立日期')
  final String establishmentDate;
  @override
  @HiveField(10)
  @JsonKey(name: '上市日期')
  final String listingDate;
  @override
  @HiveField(11)
  @JsonKey(name: '普通股每股面額')
  final String parValuePerShare;
  @override
  @HiveField(12)
  @JsonKey(name: '私募股數')
  final String privateEquilty;
  @override
  @HiveField(13)
  @JsonKey(name: '特別股')
  final String preferredStock;
  @override
  @HiveField(14)
  @JsonKey(name: '網址')
  final String website;
  @override
  @HiveField(15)
  @JsonKey(name: '已發行普通股數或TDR原股發行股數')
  final String authorizedStock;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Company(code: $code, name: $name, abbreviation: $abbreviation, industryCode: $industryCode, address: $address, invoiceNumber: $invoiceNumber, chairman: $chairman, president: $president, operator: $operator, establishmentDate: $establishmentDate, listingDate: $listingDate, parValuePerShare: $parValuePerShare, privateEquilty: $privateEquilty, preferredStock: $preferredStock, website: $website, authorizedStock: $authorizedStock)';
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
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('invoiceNumber', invoiceNumber))
      ..add(DiagnosticsProperty('chairman', chairman))
      ..add(DiagnosticsProperty('president', president))
      ..add(DiagnosticsProperty('operator', operator))
      ..add(DiagnosticsProperty('establishmentDate', establishmentDate))
      ..add(DiagnosticsProperty('listingDate', listingDate))
      ..add(DiagnosticsProperty('parValuePerShare', parValuePerShare))
      ..add(DiagnosticsProperty('privateEquilty', privateEquilty))
      ..add(DiagnosticsProperty('preferredStock', preferredStock))
      ..add(DiagnosticsProperty('website', website))
      ..add(DiagnosticsProperty('authorizedStock', authorizedStock));
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
            (identical(other.address, address) || other.address == address) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.chairman, chairman) ||
                other.chairman == chairman) &&
            (identical(other.president, president) ||
                other.president == president) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.establishmentDate, establishmentDate) ||
                other.establishmentDate == establishmentDate) &&
            (identical(other.listingDate, listingDate) ||
                other.listingDate == listingDate) &&
            (identical(other.parValuePerShare, parValuePerShare) ||
                other.parValuePerShare == parValuePerShare) &&
            (identical(other.privateEquilty, privateEquilty) ||
                other.privateEquilty == privateEquilty) &&
            (identical(other.preferredStock, preferredStock) ||
                other.preferredStock == preferredStock) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.authorizedStock, authorizedStock) ||
                other.authorizedStock == authorizedStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      abbreviation,
      industryCode,
      address,
      invoiceNumber,
      chairman,
      president,
      operator,
      establishmentDate,
      listingDate,
      parValuePerShare,
      privateEquilty,
      preferredStock,
      website,
      authorizedStock);

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
      @HiveField(4) @JsonKey(name: '住址') final String address,
      @HiveField(5) @JsonKey(name: '營利事業統一編號') final String invoiceNumber,
      @HiveField(6) @JsonKey(name: '董事長') final String chairman,
      @HiveField(7) @JsonKey(name: '總經理') final String president,
      @HiveField(8) @JsonKey(name: '總機電話') final String operator,
      @HiveField(9) @JsonKey(name: '成立日期') final String establishmentDate,
      @HiveField(10) @JsonKey(name: '上市日期') final String listingDate,
      @HiveField(11) @JsonKey(name: '普通股每股面額') final String parValuePerShare,
      @HiveField(12) @JsonKey(name: '私募股數') final String privateEquilty,
      @HiveField(13) @JsonKey(name: '特別股') final String preferredStock,
      @HiveField(14) @JsonKey(name: '網址') final String website,
      @HiveField(15)
      @JsonKey(name: '已發行普通股數或TDR原股發行股數')
      final String authorizedStock}) = _$CompanyImpl;

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
  @HiveField(5)
  @JsonKey(name: '營利事業統一編號')
  String get invoiceNumber;
  @override
  @HiveField(6)
  @JsonKey(name: '董事長')
  String get chairman;
  @override
  @HiveField(7)
  @JsonKey(name: '總經理')
  String get president;
  @override
  @HiveField(8)
  @JsonKey(name: '總機電話')
  String get operator;
  @override
  @HiveField(9)
  @JsonKey(name: '成立日期')
  String get establishmentDate;
  @override
  @HiveField(10)
  @JsonKey(name: '上市日期')
  String get listingDate;
  @override
  @HiveField(11)
  @JsonKey(name: '普通股每股面額')
  String get parValuePerShare;
  @override
  @HiveField(12)
  @JsonKey(name: '私募股數')
  String get privateEquilty;
  @override
  @HiveField(13)
  @JsonKey(name: '特別股')
  String get preferredStock;
  @override
  @HiveField(14)
  @JsonKey(name: '網址')
  String get website;
  @override
  @HiveField(15)
  @JsonKey(name: '已發行普通股數或TDR原股發行股數')
  String get authorizedStock;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
