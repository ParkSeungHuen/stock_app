import 'package:csv/csv.dart';
import 'package:stock_app/data/csv/csv_parser.dart';

import '../../domain/model/company_listing.dart';

class CompanyListingsParser implements CsvParser<CompanyListing> {

  @override
  Future<List<CompanyListing>> parse(String csvString) async {
    List<List<dynamic>> csvValues = const CsvToListConverter().convert(csvString); // csv 파일 읽어오기

    csvValues.removeAt(0); // 불러온 csv 파일의 맨 처음 줄 삭제

    return csvValues.map((e) {
      final symbol = e[0] ?? ''; // symbol column의 모든 데이터
      final name = e[1] ?? ''; // name column의 모든 데이터
      final exchange = e[2] ?? ''; // exchange column의 모든 데이터
      return CompanyListing(symbol: symbol, name: name, exchange: exchange);
    }).where((e) => e.symbol.isNotEmpty && e.name.isNotEmpty && e.exchange.isNotEmpty) // 빈 값이 없는 경우에만 list
        .toList();
  }

}