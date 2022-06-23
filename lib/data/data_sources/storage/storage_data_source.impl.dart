import 'package:hive/hive.dart';

import '../../../models/cat_fact.dart';
import 'storage_data_source.dart';

const String _boxName = 'historyCatFact2';

class StorageDataSourceImpl extends StorageDataSource {
  StorageDataSourceImpl() {
    Hive.openBox<CatFact>(_boxName).then((_) => hiveBox = Hive.box(_boxName));
  }

  late Box<CatFact> hiveBox;

  @override
  List<CatFact> loadHistory() {
    return hiveBox.values.toList();
  }

  @override
  Stream<BoxEvent> stream() => hiveBox.watch();

  @override
  void storeItem(CatFact item) {
    hiveBox.add(item);
  }
}
