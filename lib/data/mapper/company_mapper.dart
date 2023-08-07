// json데이터를 받아서 실제 화면에서 사용할 모델 클래스로 변환하는 객체를 dto라 하고, mapper가 비슷한 개념이다
import 'package:stock_app/data/source/local/company_listing_entity.dart';
import 'package:stock_app/domain/model/company_listing.dart';

import '../../domain/model/company_info.dart';
import '../source/remote/dto/company_info_dto.dart';

// 실제 프로젝트에서는 json 데이터가 항상 다를 수 있고 null값도 처리해야 하는 경우가 생길수도 있기 때문에 이렇게 mapper를 만들어서 필요한 데이터만 골라서 모델을 만든다
// companyListingEntity --> companyListing 모델로 변환
extension ToCompanyListing on CompanyListingEntity {
  CompanyListing toCompanyListing() {
    return CompanyListing(symbol: symbol,
        name: name,
        exchange: exchange); // entity와 모델이 같기 때문에 이렇게 그대로 대입
  }
}

// companyListing --> companyListingEntity
extension ToCompanyListingEntity on CompanyListing {
  CompanyListingEntity toCompanyListingEntity() {
    return CompanyListingEntity(symbol: symbol,
        name: name,
        exchange: exchange); // 모델과 entity가 같기 때문에 이렇게 그대로 대입
  }
}

extension ToCompanyInfo on CompanyInfoDto { // CompanyInfoDto -> toCompanyInfo로 모델 타입 변환
  CompanyInfo toCompanyInfo() {
    return CompanyInfo(
        symbol: symbol ?? '',
        description: description ?? '',
        name: name ?? '',
        country: country ?? '',
        industry: industry ?? '', // null이면 빈값
    );
  }
}