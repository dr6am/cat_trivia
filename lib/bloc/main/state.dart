part of 'bloc.dart';

@freezed
class MainBlocState with _$MainBlocState {
  factory MainBlocState({
    @Default(true) bool loading,
    @Default(false) bool hasError,
    @Default(false) bool isImageLoaded,
    CatFact? currentFact,
  }) = _MainBlocState;
}
