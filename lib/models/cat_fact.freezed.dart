// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFact _$CatFactFromJson(Map<String, dynamic> json) {
  return _CatFact.fromJson(json);
}

/// @nodoc
mixin _$CatFact {
  @JsonKey(name: 'status')
  @SentCountConverter()
  @HiveField(0)
  int get sentCount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get text => throw _privateConstructorUsedError;
  @DateTimeStringConv()
  @HiveField(3)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactCopyWith<CatFact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactCopyWith<$Res> {
  factory $CatFactCopyWith(CatFact value, $Res Function(CatFact) then) =
      _$CatFactCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status')
      @SentCountConverter()
      @HiveField(0)
          int sentCount,
      @JsonKey(name: '_id')
      @HiveField(1)
          String id,
      @HiveField(2)
          String text,
      @DateTimeStringConv()
      @HiveField(3)
          DateTime? createdAt});
}

/// @nodoc
class _$CatFactCopyWithImpl<$Res> implements $CatFactCopyWith<$Res> {
  _$CatFactCopyWithImpl(this._value, this._then);

  final CatFact _value;
  // ignore: unused_field
  final $Res Function(CatFact) _then;

  @override
  $Res call({
    Object? sentCount = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      sentCount: sentCount == freezed
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_CatFactCopyWith<$Res> implements $CatFactCopyWith<$Res> {
  factory _$$_CatFactCopyWith(
          _$_CatFact value, $Res Function(_$_CatFact) then) =
      __$$_CatFactCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status')
      @SentCountConverter()
      @HiveField(0)
          int sentCount,
      @JsonKey(name: '_id')
      @HiveField(1)
          String id,
      @HiveField(2)
          String text,
      @DateTimeStringConv()
      @HiveField(3)
          DateTime? createdAt});
}

/// @nodoc
class __$$_CatFactCopyWithImpl<$Res> extends _$CatFactCopyWithImpl<$Res>
    implements _$$_CatFactCopyWith<$Res> {
  __$$_CatFactCopyWithImpl(_$_CatFact _value, $Res Function(_$_CatFact) _then)
      : super(_value, (v) => _then(v as _$_CatFact));

  @override
  _$_CatFact get _value => super._value as _$_CatFact;

  @override
  $Res call({
    Object? sentCount = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_CatFact(
      sentCount: sentCount == freezed
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'CatFactAdapter')
class _$_CatFact extends _CatFact {
  const _$_CatFact(
      {@JsonKey(name: 'status')
      @SentCountConverter()
      @HiveField(0)
          this.sentCount = 0,
      @JsonKey(name: '_id')
      @HiveField(1)
          this.id = CustomStrings.EMPTY,
      @HiveField(2)
          this.text = CustomStrings.EMPTY,
      @DateTimeStringConv()
      @HiveField(3)
          this.createdAt})
      : super._();

  factory _$_CatFact.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactFromJson(json);

  @override
  @JsonKey(name: 'status')
  @SentCountConverter()
  @HiveField(0)
  final int sentCount;
  @override
  @JsonKey(name: '_id')
  @HiveField(1)
  final String id;
  @override
  @JsonKey()
  @HiveField(2)
  final String text;
  @override
  @DateTimeStringConv()
  @HiveField(3)
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CatFact(sentCount: $sentCount, id: $id, text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFact &&
            const DeepCollectionEquality().equals(other.sentCount, sentCount) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sentCount),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_CatFactCopyWith<_$_CatFact> get copyWith =>
      __$$_CatFactCopyWithImpl<_$_CatFact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactToJson(this);
  }
}

abstract class _CatFact extends CatFact {
  const factory _CatFact(
      {@JsonKey(name: 'status')
      @SentCountConverter()
      @HiveField(0)
          final int sentCount,
      @JsonKey(name: '_id')
      @HiveField(1)
          final String id,
      @HiveField(2)
          final String text,
      @DateTimeStringConv()
      @HiveField(3)
          final DateTime? createdAt}) = _$_CatFact;
  const _CatFact._() : super._();

  factory _CatFact.fromJson(Map<String, dynamic> json) = _$_CatFact.fromJson;

  @override
  @JsonKey(name: 'status')
  @SentCountConverter()
  @HiveField(0)
  int get sentCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_id')
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get text => throw _privateConstructorUsedError;
  @override
  @DateTimeStringConv()
  @HiveField(3)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactCopyWith<_$_CatFact> get copyWith =>
      throw _privateConstructorUsedError;
}
