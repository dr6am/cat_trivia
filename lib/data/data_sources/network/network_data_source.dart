import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../const/strings.dart';
import '../../../models/cat_fact.dart';

part 'network_data_source.g.dart';

@RestApi(baseUrl: CustomStrings.API_BASE_URL)
abstract class CatFactsApiDataSource {
  factory CatFactsApiDataSource(Dio dio, {String baseUrl}) =
      _CatFactsApiDataSource;

  @GET('/facts/random?animal_type=cat')
  Future<CatFact?> getRandomFact();
}
