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
mixin _$MainBlocState {
  bool get loading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isImageLoaded => throw _privateConstructorUsedError;
  CatFact? get currentFact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainBlocStateCopyWith<MainBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainBlocStateCopyWith<$Res> {
  factory $MainBlocStateCopyWith(
          MainBlocState value, $Res Function(MainBlocState) then) =
      _$MainBlocStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, bool hasError, bool isImageLoaded, CatFact? currentFact});

  $CatFactCopyWith<$Res>? get currentFact;
}

/// @nodoc
class _$MainBlocStateCopyWithImpl<$Res>
    implements $MainBlocStateCopyWith<$Res> {
  _$MainBlocStateCopyWithImpl(this._value, this._then);

  final MainBlocState _value;
  // ignore: unused_field
  final $Res Function(MainBlocState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? isImageLoaded = freezed,
    Object? currentFact = freezed,
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
      isImageLoaded: isImageLoaded == freezed
          ? _value.isImageLoaded
          : isImageLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFact: currentFact == freezed
          ? _value.currentFact
          : currentFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
    ));
  }

  @override
  $CatFactCopyWith<$Res>? get currentFact {
    if (_value.currentFact == null) {
      return null;
    }

    return $CatFactCopyWith<$Res>(_value.currentFact!, (value) {
      return _then(_value.copyWith(currentFact: value));
    });
  }
}

/// @nodoc
abstract class _$$_MainBlocStateCopyWith<$Res>
    implements $MainBlocStateCopyWith<$Res> {
  factory _$$_MainBlocStateCopyWith(
          _$_MainBlocState value, $Res Function(_$_MainBlocState) then) =
      __$$_MainBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading, bool hasError, bool isImageLoaded, CatFact? currentFact});

  @override
  $CatFactCopyWith<$Res>? get currentFact;
}

/// @nodoc
class __$$_MainBlocStateCopyWithImpl<$Res>
    extends _$MainBlocStateCopyWithImpl<$Res>
    implements _$$_MainBlocStateCopyWith<$Res> {
  __$$_MainBlocStateCopyWithImpl(
      _$_MainBlocState _value, $Res Function(_$_MainBlocState) _then)
      : super(_value, (v) => _then(v as _$_MainBlocState));

  @override
  _$_MainBlocState get _value => super._value as _$_MainBlocState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? isImageLoaded = freezed,
    Object? currentFact = freezed,
  }) {
    return _then(_$_MainBlocState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoaded: isImageLoaded == freezed
          ? _value.isImageLoaded
          : isImageLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFact: currentFact == freezed
          ? _value.currentFact
          : currentFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
    ));
  }
}

/// @nodoc

class _$_MainBlocState with DiagnosticableTreeMixin implements _MainBlocState {
  _$_MainBlocState(
      {this.loading = true,
      this.hasError = false,
      this.isImageLoaded = false,
      this.currentFact});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isImageLoaded;
  @override
  final CatFact? currentFact;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainBlocState(loading: $loading, hasError: $hasError, isImageLoaded: $isImageLoaded, currentFact: $currentFact)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainBlocState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('isImageLoaded', isImageLoaded))
      ..add(DiagnosticsProperty('currentFact', currentFact));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainBlocState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isImageLoaded, isImageLoaded) &&
            const DeepCollectionEquality()
                .equals(other.currentFact, currentFact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isImageLoaded),
      const DeepCollectionEquality().hash(currentFact));

  @JsonKey(ignore: true)
  @override
  _$$_MainBlocStateCopyWith<_$_MainBlocState> get copyWith =>
      __$$_MainBlocStateCopyWithImpl<_$_MainBlocState>(this, _$identity);
}

abstract class _MainBlocState implements MainBlocState {
  factory _MainBlocState(
      {final bool loading,
      final bool hasError,
      final bool isImageLoaded,
      final CatFact? currentFact}) = _$_MainBlocState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  bool get isImageLoaded => throw _privateConstructorUsedError;
  @override
  CatFact? get currentFact => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainBlocStateCopyWith<_$_MainBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
