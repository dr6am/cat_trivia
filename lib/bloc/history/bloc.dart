import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../data/repositories/cat_facts_repo/cat_facts_repo.dart';
import '../../models/cat_fact.dart';

part 'bloc.freezed.dart';
part 'events.dart';
part 'state.dart';

class HistoryBloc extends Bloc<HistoryBlocEvent, HistoryState> {
  HistoryBloc(this._catFactsRepository) : super(HistoryState()) {
    on<LoadHistoryEvent>(loadHistoryItems);

    add(LoadHistoryEvent());

    _catFactsRepository.dbUpdatesStream().listen((BoxEvent _) {
      add(LoadHistoryEvent());
    });
  }
  final CatFactsRepository _catFactsRepository;

  Future<void> loadHistoryItems(
      HistoryBlocEvent event, Emitter<HistoryState> emit) async {
    emit(state.copyWith(loading: true));
    final List<CatFact> history = _catFactsRepository.loadHistory();

    emit(state.copyWith(hasError: false, loading: false, history: history));
  }
}
