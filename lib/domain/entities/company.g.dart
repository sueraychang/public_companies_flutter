// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompanyAdapter extends TypeAdapter<_$CompanyImpl> {
  @override
  final int typeId = 2;

  @override
  _$CompanyImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CompanyImpl(
      code: fields[0] as String,
      name: fields[1] as String,
      abbreviation: fields[2] as String,
      industryCode: fields[3] as String,
      address: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CompanyImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.abbreviation)
      ..writeByte(3)
      ..write(obj.industryCode)
      ..writeByte(4)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      code: json['公司代號'] as String? ?? '',
      name: json['公司名稱'] as String? ?? '',
      abbreviation: json['公司簡稱'] as String? ?? '',
      industryCode: json['產業別'] as String? ?? '',
      address: json['住址'] as String? ?? '',
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      '公司代號': instance.code,
      '公司名稱': instance.name,
      '公司簡稱': instance.abbreviation,
      '產業別': instance.industryCode,
      '住址': instance.address,
    };
