import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/cat_fact.dart';

part 'bloc.freezed.dart';
part 'events.dart';
part 'state.dart';

class HistoryBloc extends Bloc<HistoryBlocEvent, HistoryBloc> {
  HistoryBloc() : super(HistoryBloc());
}
