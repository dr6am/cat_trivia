import 'package:hive/hive.dart';

import '../../../models/cat_fact.dart';

abstract class StorageDataSource {
  List<CatFact> loadHistory();
  void storeItem(CatFact item);
  Stream<BoxEvent> stream();
}
