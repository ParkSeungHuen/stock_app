// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListing _$CompanyListingFromJson(Map<String, dynamic> json) {
  return _CompanyListing.fromJson(json);
}

/// @nodoc
mixin _$CompanyListing {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListingCopyWith<CompanyListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingCopyWith<$Res> {
  factory $CompanyListingCopyWith(
          CompanyListing value, $Res Function(CompanyListing) then) =
      _$CompanyListingCopyWithImpl<$Res, CompanyListing>;
  @useResult
  $Res call({String symbol, String name, String exchange});
}

/// @nodoc
class _$CompanyListingCopyWithImpl<$Res, $Val extends CompanyListing>
    implements $CompanyListingCopyWith<$Res> {
  _$CompanyListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? exchange = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyListingCopyWith<$Res>
    implements $CompanyListingCopyWith<$Res> {
  factory _$$_CompanyListingCopyWith(
          _$_CompanyListing value, $Res Function(_$_CompanyListing) then) =
      __$$_CompanyListingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name, String exchange});
}

/// @nodoc
class __$$_CompanyListingCopyWithImpl<$Res>
    extends _$CompanyListingCopyWithImpl<$Res, _$_CompanyListing>
    implements _$$_CompanyListingCopyWith<$Res> {
  __$$_CompanyListingCopyWithImpl(
      _$_CompanyListing _value, $Res Function(_$_CompanyListing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? exchange = null,
  }) {
    return _then(_$_CompanyListing(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyListing
    with DiagnosticableTreeMixin
    implements _CompanyListing {
  const _$_CompanyListing(
      {required this.symbol, required this.name, required this.exchange});

  factory _$_CompanyListing.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyListingFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String exchange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListing(symbol: $symbol, name: $name, exchange: $exchange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyListing'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('exchange', exchange));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyListing &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, exchange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyListingCopyWith<_$_CompanyListing> get copyWith =>
      __$$_CompanyListingCopyWithImpl<_$_CompanyListing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListingToJson(
      this,
    );
  }
}

abstract class _CompanyListing implements CompanyListing {
  const factory _CompanyListing(
      {required final String symbol,
      required final String name,
      required final String exchange}) = _$_CompanyListing;

  factory _CompanyListing.fromJson(Map<String, dynamic> json) =
      _$_CompanyListing.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get exchange;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyListingCopyWith<_$_CompanyListing> get copyWith =>
      throw _privateConstructorUsedError;
}
