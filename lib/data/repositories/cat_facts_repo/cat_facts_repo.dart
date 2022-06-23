import 'package:hive/hive.dart';

import '../../../models/cat_fact.dart';

abstract class CatFactsRepository {
  Future<CatFact?> loadRandom();
  List<CatFact> loadHistory();
  void storeFact(CatFact catFact);
  Stream<BoxEvent> dbUpdatesStream();
}
