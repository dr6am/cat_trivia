part of 'bloc.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  factory HistoryState({
    @Default(false) bool loading,
    @Default(false) bool hasError,
    @Default(<CatFact>[]) List<CatFact> history,
  }) = _HistoryState;
}