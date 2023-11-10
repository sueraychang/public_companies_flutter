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
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json)
      => _$CompanyFromJson(json);
}