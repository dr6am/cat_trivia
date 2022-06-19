import '../../../models/cat_fact.dart';

abstract class StorageDataSource {
  Future<List<CatFact>> loadHistory();
  Future<CatFact> loadItemById(String id);
}
