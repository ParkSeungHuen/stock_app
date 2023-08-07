import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'company_listings_action.freezed.dart';

@freezed
abstract class CompanyListingsAction<T> with _$CompanyListingsAction<T> {
  const factory CompanyListingsAction.refresh() = Refresh;
  const factory CompanyListingsAction.onSearchQueryChange(String query) = OnSearchQueryChange;
}