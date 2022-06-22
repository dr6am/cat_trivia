// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  bool get loading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<CatFact> get history => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool hasError, List<CatFact> history});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
    ));
  }
}

/// @nodoc
abstract class _$$_HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryStateCopyWith(
          _$_HistoryState value, $Res Function(_$_HistoryState) then) =
      __$$_HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool hasError, List<CatFact> history});
}

/// @nodoc
class __$$_HistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$$_HistoryStateCopyWith<$Res> {
  __$$_HistoryStateCopyWithImpl(
      _$_HistoryState _value, $Res Function(_$_HistoryState) _then)
      : super(_value, (v) => _then(v as _$_HistoryState));

  @override
  _$_HistoryState get _value => super._value as _$_HistoryState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? history = freezed,
  }) {
    return _then(_$_HistoryState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      history: history == freezed
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
    ));
  }
}

/// @nodoc

class _$_HistoryState implements _HistoryState {
  _$_HistoryState(
      {this.loading = false,
      this.hasError = false,
      final List<CatFact> history = const <CatFact>[]})
      : _history = history;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool hasError;
  final List<CatFact> _history;
  @override
  @JsonKey()
  List<CatFact> get history {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'HistoryState(loading: $loading, hasError: $hasError, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      __$$_HistoryStateCopyWithImpl<_$_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  factory _HistoryState(
      {final bool loading,
      final bool hasError,
      final List<CatFact> history}) = _$_HistoryState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  List<CatFact> get history => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
