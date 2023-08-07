import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:stock_app/presentation/company_listings/company_listings_state.dart';

import '../../domain/repository/stock_repository.dart';

class CompanyListingsViewModel with ChangeNotifier{
  final StockRepository _repository;

  CompanyListingsState _state = CompanyListingsState();
  CompanyListingsState get state => _state;

  Timer? _debounce; // debounce용 타이머

  CompanyListingsViewModel(this._repository) {
   _getCompanyListings();
  }

  void onAction(CompanyListingsAction action) {
    action.when(
        refresh: () => _getCompanyListings(fetchFromRemote: true),  // remote해서 데이터를 갖고 올 것
        onSearchQueryChange: (query) {
          _debounce?.cancel();
          _debounce = Timer(Duration(milliseconds: 500), () { // 500밀리세컨을 기다렸다가 _getCompanyListings 실행, 만약 _debounce의 500밀리세컨이 지나지 않을 경우 (_debounce가 active한 상태일 경우) _getCompanyListings를 실행하지 않는다.
            _getCompanyListings(query: query); // db에서 ..
          });
        },
    );

  }

  Future<void> _getCompanyListings({bool fetchFromRemote = false, String query = '',}) async {
    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final result = await _repository.getCompanyListings(fetchFromRemote, query); // default 값 설정함

    result.when( // 강제성을 주는 result
        success: (listings) {
          _state = state.copyWith(
            companies: listings,
          );
        }, error: (e) {
          // TODO : 에러처리
          print(e);
        }
    );

    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();
  }

}