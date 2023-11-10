// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IndustryAdapter extends TypeAdapter<_$IndustryImpl> {
  @override
  final int typeId = 1;

  @override
  _$IndustryImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$IndustryImpl(
      code: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$IndustryImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndustryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryImpl _$$IndustryImplFromJson(Map<String, dynamic> json) =>
    _$IndustryImpl(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$IndustryImplToJson(_$IndustryImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
