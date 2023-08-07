import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'company_info_dto.freezed.dart';

part 'company_info_dto.g.dart';

@freezed
class CompanyInfoDto with _$CompanyInfoDto {
  const factory CompanyInfoDto({ // nullable로 만드는 이유 : null값이 들어올 경우 대비, 이후 리팩토링
    @JsonKey(name : 'Symbol') String? symbol, // JsonKey로 변환, 매핑
    @JsonKey(name : 'Description') String? description,
    @JsonKey(name : 'Name') String? name,
    @JsonKey(name : 'Country') String? country,
    @JsonKey(name : 'Industry') String? industry,
  }) = _CompanyInfoDto;

  factory CompanyInfoDto.fromJson(Map<String, Object?> json) => _$CompanyInfoDtoFromJson(json);
}