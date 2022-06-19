// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_local_identifiers

part of 'network_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _CatFactsApiDataSource implements CatFactsApiDataSource {
  _CatFactsApiDataSource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://cat-fact.herokuapp.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CatFact> getRandomFact() async {
    const Map<String, dynamic> _extra = <String, dynamic>{};
    final Map<String, dynamic> queryParameters = <String, dynamic>{};
    final Map<String, dynamic> _headers = <String, dynamic>{};
    final Map<String, dynamic> _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<CatFact>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/facts/random?animal_type=cat',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final CatFact value = CatFact.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
