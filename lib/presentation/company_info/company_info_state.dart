import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain/model/company_info.dart';
import '../../domain/model/intraday_info.dart';

part 'company_info_state.freezed.dart';

part 'company_info_state.g.dart';

@freezed
class CompanyInfoState with _$CompanyInfoState {
  const factory CompanyInfoState({
    CompanyInfo? companyInfo,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default([]) List<IntradayInfo> stockInfos, // 디폴트값 빈 배열
  }) = _CompanyInfoState;

  factory CompanyInfoState.fromJson(Map<String, Object?> json) => _$CompanyInfoStateFromJson(json);
}