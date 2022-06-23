// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatFactAdapter extends TypeAdapter<_$_CatFact> {
  @override
  final int typeId = 0;

  @override
  _$_CatFact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CatFact(
      sentCount: fields[0] as int,
      id: fields[1] as String,
      text: fields[2] as String,
      createdAt: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CatFact obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.sentCount)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.text)
      ..writeByte(3)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatFactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFact _$$_CatFactFromJson(Map<String, dynamic> json) => _$_CatFact(
      sentCount: json['status'] == null
          ? 0
          : const SentCountConverter()
              .fromJson(json['status'] as Map<String, dynamic>),
      id: json['_id'] as String? ?? CustomStrings.EMPTY,
      text: json['text'] as String? ?? CustomStrings.EMPTY,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_CatFactToJson(_$_CatFact instance) =>
    <String, dynamic>{
      'status': const SentCountConverter().toJson(instance.sentCount),
      '_id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
