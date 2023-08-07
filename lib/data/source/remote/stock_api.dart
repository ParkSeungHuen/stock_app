import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stock_app/data/source/remote/dto/company_info_dto.dart';

class StockApi {
  static const baseUrl = 'https://www.alphavantage.co/';
  static const apiKey = '37Z2NX3U18E9IK8N';
  final http.Client _client; // 테스트 코드를 짜기 위해 client를 기본 생성자로 해서 바꿔치기를 할 수 있도록

  StockApi({http.Client? client}) : _client = (client ?? http.Client()); // 만약 _client가 null 일 경우 http 기본 client를 사용한다, 하지만 다른 client도 들어올 수 있다. -> 테스트를 위해

  Future<http.Response> getListings({String apiKey = apiKey}) async {
    return await _client.get(Uri.parse('$baseUrl/query?function=LISTING_STATUS&apikey=$apiKey'));
  }

  Future<CompanyInfoDto> getCompanyInfo({String apiKey = apiKey, required String symbol}) async {
    final response = await _client.get(Uri.parse('$baseUrl/query?function=OVERVIEW&symbol=$symbol&apikey=$apiKey'));
    return CompanyInfoDto.fromJson(jsonDecode(response.body)); // json 데이터를 CompanyInfoDto 타입으로
  }

  Future<http.Response> getIntradayInfo({required String symbol, String apiKey = apiKey}) async {
    return await _client.get(Uri.parse('$baseUrl/query?function=TIME_SERIES_INTRADAY&symbol=$symbol&interval=60min&apikey=$apiKey&datatype=csv'));

  }


}