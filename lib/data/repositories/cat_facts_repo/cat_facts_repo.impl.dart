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
  Future<List<CatFact>> loadHistory() async {
    return Future<List<CatFact>>.value(<CatFact>[]);
  }

  @override
  Future<CatFact?> loadItemById(String id) async {
    _storageDataSource.loadItemById(id);
    return null;
  }

  @override
  Future<CatFact?> loadRandom() async {
    return _networkDataSource.getRandomFact();
  }
}
