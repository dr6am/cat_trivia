part of 'injection_container.dart';

final Dio _httpClient = Dio();
final CatFactsApiDataSource _networkDataSource =
    CatFactsApiDataSource(_httpClient);
final StorageDataSource _storageDataSource = StorageDataSourceImpl();
