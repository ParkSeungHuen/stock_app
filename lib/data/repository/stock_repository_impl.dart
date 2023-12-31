import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/csv/intraday_info_parser.dart';
import 'package:stock_app/data/mapper/company_mapper.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/domain/model/company_listing.dart';
import 'package:stock_app/domain/model/intraday_info.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/util/result.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _api;
  final StockDao _dao;
  final _companyListingsParser = CompanyListingsParser();
  final _intradayInfoParser = IntradayInfoParser();

  StockRepositoryImpl(this._dao, this._api);

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(bool fetchFromRemote, String query) async {
  // 캐시에서 찾는다.
  final localListings = await _dao.searchCompanyListing(query);

  // 없으면 조회
  final isDbEmpty = localListings.isEmpty && query.isEmpty;
  final shouldJustLoadFromCache = !isDbEmpty && !fetchFromRemote;

  // 캐시
  if(shouldJustLoadFromCache) {
    return Result.success(
      localListings.map((e) => e.toCompanyListing()).toList()
    );
  }

  // 리모트
  try{
    final response = await _api.getListings();
    final remoteListings = await _companyListingsParser.parse(response.body); // response.body에 있는 csv내용을 parse
    // 캐시 비우기
    await _dao.clearCompanyListings();
    //캐시 추가
    await _dao.insertCompanyListings(
      remoteListings.map((e) => e.toCompanyListingEntity()).toList() // db에 저장되는 형태인 entity로 변환하여 db에 저장
    );

    return Result.success(remoteListings);
  }catch (e) {
    return Result.error(Exception('데이터 로드 실패 !!'));
  }

  }

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) async {
    try {
      final dto = await _api.getCompanyInfo(symbol: symbol);
      return Result.success(dto.toCompanyInfo());
    } catch (e) {
      return Result.error(Exception('회사 정보 로드 실패 !! : ${e.toString()}'));
    }
  }

  @override
  Future<Result<List<IntradayInfo>>> getIntradayInfo(String symbol) async {
    try {
      final response = await _api.getIntradayInfo(symbol: symbol);
      final results = await _intradayInfoParser.parse(response.body);
      return Result.success(results);
    } catch (e) {
      return Result.error(Exception('intraday 정보 로드 실패 !! : ${e.toString()}'));
    }
  }

}