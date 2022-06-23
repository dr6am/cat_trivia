import 'package:freezed_annotation/freezed_annotation.dart';

import '../const/strings.dart';

part 'cat_fact.freezed.dart';
part 'cat_fact.g.dart';

@freezed
class CatFact with _$CatFact {
  const factory CatFact({
    @JsonKey(name: '_id') @Default(CustomStrings.EMPTY) String id,
    @Default(CustomStrings.EMPTY) String text,
    @DateTimeStringConv() DateTime? createdAt,
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
