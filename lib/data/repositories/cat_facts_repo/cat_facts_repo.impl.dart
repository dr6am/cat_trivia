import 'package:hive/hive.dart';

import '../../../models/cat_fact.dart';
import '../../data_sources/network/network_data_source.dart';
import '../../data_sources/storage/storage_data_source.dart';
import 'cat_facts_repo.dart';

class CatFactsRepositoryImpl extends CatFactsRepository {
  CatFactsRepositoryImpl(
      {required StorageDataSource storageDataSource,
      required CatFactsApiDataSource networkDataSource})
      : _storageDataSource = storageDataSource,
        _networkDataSource = networkDataSource;

  final StorageDataSource _storageDataSource;
  final CatFactsApiDataSource _networkDataSource;

  @override
  Future<CatFact?> loadRandom() async {
    return _networkDataSource.getRandomFact();
  }

  @override
  void storeFact(CatFact catFact) => _storageDataSource.storeItem(catFact);

  @override
  List<CatFact> loadHistory() {
    return _storageDataSource.loadHistory();
  }

  @override
  Stream<BoxEvent> dbUpdatesStream() => _storageDataSource.stream();
}
