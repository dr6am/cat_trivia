import 'package:freezed_annotation/freezed_annotation.dart';

import '../const/strings.dart';

part 'cat_fact.freezed.dart';
part 'cat_fact.g.dart';

@freezed
class CatFact with _$CatFact {
  const factory CatFact({
    @JsonKey(name: '_id') @Default(CustomStrings.EMPTY) String id,
    @Default(CustomStrings.EMPTY) String text,
    @Default(CustomStrings.EMPTY) String createdAt,
  }) = _CatFact;

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);
}
