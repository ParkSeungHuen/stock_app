import 'package:csv/csv.dart';
import 'package:stock_app/data/mapper/intraday_info_mapper.dart';
import 'package:stock_app/domain/model/intraday_info.dart';

import '../source/remote/dto/intraday_info_dto.dart';
import 'csv_parser.dart';

class IntradayInfoParser implements CsvParser<IntradayInfo> {
  @override
  Future<List<IntradayInfo>> parse(String csvString) async {
    List<List<dynamic>> csvValues = const CsvToListConverter().convert(csvString); // csv 파일 읽어오기, List<dynamic>으로 들어오는 데이터를
    csvValues.removeAt(0);

    return csvValues.map((e) { // List<IntradayInfo> 형식으로 바꾸어 주어야 한다. 아래 코드
      final timestamp = e[0] ?? '';
      final close = e[4] ?? 0.0;
      final dto = IntradayInfoDto(timestamp: timestamp, close: close);
      return dto.toIntradayInfo();
    }).toList();
  }

}