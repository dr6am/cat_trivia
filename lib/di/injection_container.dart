import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/history/bloc.dart';
import '../bloc/main/bloc.dart';
import '../data/data_sources/network/network_data_source.dart';
import '../data/data_sources/storage/storage_data_source.dart';
import '../data/data_sources/storage/storage_data_source.impl.dart';
import '../data/repositories/cat_facts_repo/cat_facts_repo.dart';
import '../data/repositories/cat_facts_repo/cat_facts_repo.impl.dart';

part 'instances.dart';

class InjectionContainer extends StatelessWidget {
  const InjectionContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<CatFactsRepository>(
        create: (BuildContext _) => CatFactsRepositoryImpl(
            storageDataSource: _storageDataSource,
            networkDataSource: _networkDataSource),
        child: MultiBlocProvider(
          providers: <BlocProvider<dynamic>>[
            BlocProvider<MainBloc>(
                create: (BuildContext context) =>
                    MainBloc(context.read<CatFactsRepository>())),
            BlocProvider<HistoryBloc>(
                create: (BuildContext _) => HistoryBloc()),
          ],
          child: child,
        ));
  }
}
