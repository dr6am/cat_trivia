import '../../../models/cat_fact.dart';

abstract class CatFactsRepository {
  Future<CatFact> loadRandom();
  Future<CatFact?> loadItemById(String id);
  Future<List<CatFact>> loadHistory();
}
