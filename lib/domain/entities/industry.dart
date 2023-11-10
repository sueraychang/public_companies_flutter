
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'industry.freezed.dart';
part 'industry.g.dart';

@freezed
class Industry with _$Industry {
  @HiveType(typeId: 1, adapterName: 'IndustryAdapter')
  const factory Industry({
    @HiveField(0) @Default('') String code,
    @HiveField(1) @Default('') String name,
  }) = _Industry;

  factory Industry.fromJson(Map<String, Object?> json) =>
      _$IndustryFromJson(json);
}
