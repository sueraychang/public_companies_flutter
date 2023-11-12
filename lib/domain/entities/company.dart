// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  @HiveType(typeId: 2, adapterName: 'CompanyAdapter')
  const factory Company({
    @HiveField(0) @JsonKey(name: '公司代號') @Default('') String code,
    @HiveField(1) @JsonKey(name: '公司名稱') @Default('') String name,
    @HiveField(2) @JsonKey(name: '公司簡稱') @Default('') String abbreviation,
    @HiveField(3) @JsonKey(name: '產業別') @Default('') String industryCode,
    @HiveField(4) @JsonKey(name: '住址') @Default('') String address,
    @HiveField(5) @JsonKey(name: '營利事業統一編號') @Default('') String invoiceNumber,
    @HiveField(6) @JsonKey(name: '董事長') @Default('') String chairman,
    @HiveField(7) @JsonKey(name: '總經理') @Default('') String president,
    @HiveField(8) @JsonKey(name: '總機電話') @Default('') String operator,
    @HiveField(9) @JsonKey(name: '成立日期') @Default('') String establishmentDate,
    @HiveField(10) @JsonKey(name: '上市日期') @Default('') String listingDate,
    @HiveField(11) @JsonKey(name: '實收資本額') @Default('') String capital,
    @HiveField(12) @JsonKey(name: '普通股每股面額') @Default('') String parValuePerShare,
    @HiveField(13) @JsonKey(name: '私募股數') @Default('') String privateEquilty,
    @HiveField(14) @JsonKey(name: '特別股') @Default('') String preferredStock,
    @HiveField(15) @JsonKey(name: '網址') @Default('') String website,
    @HiveField(16) @JsonKey(name: '已發行普通股數或TDR原股發行股數') @Default('') String authorizedStock,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json)
      => _$CompanyFromJson(json);
}