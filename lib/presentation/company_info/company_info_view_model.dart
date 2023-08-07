import 'package:flutter/material.dart';

import '../../domain/repository/stock_repository.dart';
import 'company_info_state.dart';

class CompanyInfoViewModel with ChangeNotifier {
  final StockRepository _repository;
  CompanyInfoViewModel(this._repository, String symbol) {
    loadCompanyInfo(symbol);
  }

  CompanyInfoState _state = CompanyInfoState();
  CompanyInfoState get state => _state;

  Future<void> loadCompanyInfo(String symbol) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCompanyInfo(symbol);
    result.when(success: (info) {
      _state = state.copyWith(
        companyInfo: info,
        isLoading: false,
        errorMessage: null,
      );
    }, error: (e) {
      _state = state.copyWith(
        companyInfo: null,
        isLoading: false,
        errorMessage: e.toString(),
      );
    });

    notifyListeners();

    // 주가정보 끌어오기
    final intradayInfo = await _repository.getIntradayInfo(symbol);
    intradayInfo.when(success: (infos) {
      _state = state.copyWith(
        stockInfos: infos,
            isLoading: false,
        errorMessage: null,
      );
    }, error: (e) {
      _state = state.copyWith(
        stockInfos: [],
        isLoading: false,
        errorMessage: e.toString(),
      );
    });
    notifyListeners();
  }
}