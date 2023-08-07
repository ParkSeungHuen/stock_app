import 'package:hive/hive.dart';

import 'company_listing_entity.dart';

class StockDao { // db에 접근하는 기능을 담당함, api 기능과 유사
  static const companyListing = 'companyListing';

  // 추가
  Future<void> insertCompanyListings(
      List<CompanyListingEntity> companyListingEntities
      ) async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db'); // CompanyListingEntity로 타입 지정하기
    await box.addAll(companyListingEntities); // put 해서 데이터를 다 넣기
  }
  // 클리어
  Future<void> clearCompanyListings() async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db'); // CompanyListingEntity로 타입 지정하기
    await box.clear();
  }
  // 검색

  Future<List<CompanyListingEntity>> searchCompanyListing(String query) async {
    final box = await Hive.openBox<CompanyListingEntity>('stock.db'); // CompanyListingEntity로 타입 지정하기
    final List<CompanyListingEntity> companyListing = box.values.toList();
    return companyListing.where((e) =>
        e.name.toLowerCase().contains(query.toLowerCase()) ||
        query.toUpperCase() == e.symbol).toList();
  }
}