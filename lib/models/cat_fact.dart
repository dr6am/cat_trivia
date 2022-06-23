import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../const/strings.dart';

part 'cat_fact.freezed.dart';
part 'cat_fact.g.dart';

@freezed
class CatFact with _$CatFact {
  @HiveType(typeId: 0, adapterName: 'CatFactAdapter')
  const factory CatFact({
    @JsonKey(name: 'status')
    @SentCountConverter()
    @Default(0)
    @HiveField(0)
        int sentCount,
    @JsonKey(name: '_id') @Default(CustomStrings.EMPTY) @HiveField(1) String id,
    @Default(CustomStrings.EMPTY) @HiveField(2) String text,
    @DateTimeStringConv() @HiveField(3) DateTime? createdAt,
  }) = _CatFact;

  const CatFact._();

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);

  String get created {
    if (createdAt == null) {
      return '';
    } else
      return '${createdAt?.day.toString().padLeft(2, '0')}/${createdAt?.month.toString().padLeft(2, '0')}/${createdAt?.year} ${createdAt?.hour.toString().padLeft(2, '0')}:${createdAt?.minute.toString().padLeft(2, '0')}';
  }
}

class DateTimeStringConv implements JsonConverter<DateTime, String> {
  const DateTimeStringConv();

  @override
  DateTime fromJson(String data) {
    final DateTime parsed = DateTime.parse(data);
    return parsed.add(parsed.timeZoneOffset);
  }

  @override
  String toJson(DateTime data) => data.toUtc().toIso8601String();
}

class SentCountConverter implements JsonConverter<int, Map<String, dynamic>> {
  const SentCountConverter();

  @override
  int fromJson(Map<String, dynamic> json) {
    return (json['sentCount'] as int?) ?? 0;
  }

  @override
  Map<String, dynamic> toJson(int data) {
    return <String, dynamic>{'verified': null, 'sentCount': data};
  }
}
