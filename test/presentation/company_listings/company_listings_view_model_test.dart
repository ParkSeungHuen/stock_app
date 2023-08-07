import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/repository/stock_repository_impl.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';

void main() { // TODO : 테스트 코드 마저 이어보기
  test('company_listings_view_model 생성시 데이터를 잘 가져와야 한다', () async {
    Hive.init(null); // Flutter 환경에서 hive 사용하기 위해, 하지만 테스트 코드를 할 때에는 init으로 해주어야 한다, 테스트 코드는 Flutter 환경이 아니다
    Hive.registerAdapter(CompanyListingEntityAdapter()); // Hive Entity 작성 후 generate 하면 Adapter가 추가되고, 이를 메인에서 추가해주어야 한다
    // 테스트 코드에서 마찬가지로 메인에서 하는 초기화를 해주어야 한다.

    final _api = StockApi();
    final _dao = StockDao();
    final viewModel = CompanyListingsViewModel(StockRepositoryImpl(_dao, _api));

    await Future.delayed(const Duration(seconds: 3));

    expect(viewModel.state.companies.isNotEmpty, true);
  });
}