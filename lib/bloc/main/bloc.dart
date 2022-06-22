import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repositories/cat_facts_repo/cat_facts_repo.dart';
import '../../models/cat_fact.dart';

part 'bloc.freezed.dart';
part 'events.dart';
part 'state.dart';

class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  MainBloc(this._catFactsRepository) : super(MainBlocState()) {
    on<LoadRandomFactEvent>(loadRandomFact, transformer: droppable());

    add(LoadRandomFactEvent());
  }
  final CatFactsRepository _catFactsRepository;

  Future<void> loadRandomFact(
      MainBlocEvent event, Emitter<MainBlocState> emit) async {
    emit(state.copyWith(loading: true, isImageLoaded: false));
    await Future<void>.delayed(const Duration(seconds: 2));
    final CatFact result =
        await _catFactsRepository.loadRandom().catchError((e) {
      emit(state.copyWith(hasError: true, loading: false));
    });
    if (kDebugMode) {
      print(result);
    }
    emit(state.copyWith(currentFact: result, loading: false));
  }
}
