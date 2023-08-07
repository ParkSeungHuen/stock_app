import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'company_listing.freezed.dart';

part 'company_listing.g.dart';

@freezed
class CompanyListing with _$CompanyListing { // 불변객체로 만들려고
  const factory CompanyListing({
    required String symbol,
    required String name,
    required String exchange,
  }) = _CompanyListing;

  factory CompanyListing.fromJson(Map<String, Object?> json) => _$CompanyListingFromJson(json);
}