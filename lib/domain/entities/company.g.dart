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
      invoiceNumber: fields[5] as String,
      chairman: fields[6] as String,
      president: fields[7] as String,
      operator: fields[8] as String,
      establishmentDate: fields[9] as String,
      listingDate: fields[10] as String,
      parValuePerShare: fields[11] as String,
      privateEquilty: fields[12] as String,
      preferredStock: fields[13] as String,
      website: fields[14] as String,
      authorizedStock: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CompanyImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.abbreviation)
      ..writeByte(3)
      ..write(obj.industryCode)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.invoiceNumber)
      ..writeByte(6)
      ..write(obj.chairman)
      ..writeByte(7)
      ..write(obj.president)
      ..writeByte(8)
      ..write(obj.operator)
      ..writeByte(9)
      ..write(obj.establishmentDate)
      ..writeByte(10)
      ..write(obj.listingDate)
      ..writeByte(11)
      ..write(obj.parValuePerShare)
      ..writeByte(12)
      ..write(obj.privateEquilty)
      ..writeByte(13)
      ..write(obj.preferredStock)
      ..writeByte(14)
      ..write(obj.website)
      ..writeByte(15)
      ..write(obj.authorizedStock);
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
      invoiceNumber: json['營利事業統一編號'] as String? ?? '',
      chairman: json['董事長'] as String? ?? '',
      president: json['總經理'] as String? ?? '',
      operator: json['總機電話'] as String? ?? '',
      establishmentDate: json['成立日期'] as String? ?? '',
      listingDate: json['上市日期'] as String? ?? '',
      parValuePerShare: json['普通股每股面額'] as String? ?? '',
      privateEquilty: json['私募股數'] as String? ?? '',
      preferredStock: json['特別股'] as String? ?? '',
      website: json['網址'] as String? ?? '',
      authorizedStock: json['已發行普通股數或TDR原股發行股數'] as String? ?? '',
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      '公司代號': instance.code,
      '公司名稱': instance.name,
      '公司簡稱': instance.abbreviation,
      '產業別': instance.industryCode,
      '住址': instance.address,
      '營利事業統一編號': instance.invoiceNumber,
      '董事長': instance.chairman,
      '總經理': instance.president,
      '總機電話': instance.operator,
      '成立日期': instance.establishmentDate,
      '上市日期': instance.listingDate,
      '普通股每股面額': instance.parValuePerShare,
      '私募股數': instance.privateEquilty,
      '特別股': instance.preferredStock,
      '網址': instance.website,
      '已發行普通股數或TDR原股發行股數': instance.authorizedStock,
    };
