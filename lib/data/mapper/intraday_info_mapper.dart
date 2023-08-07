import 'package:intl/intl.dart';
import 'package:stock_app/data/source/remote/dto/intraday_info_dto.dart';

import '../../domain/model/intraday_info.dart';

extension ToIntradayInfo on IntradayInfoDto{
  IntradayInfo toIntradayInfo() {
    // 2023-08-04 07:55:00 PM
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss'); // 패턴에 따라 포맷 정의를 해주자
    return IntradayInfo(date: formatter.parse(timestamp), close: close);
  }
}