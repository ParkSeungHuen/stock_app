// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intraday_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntradayInfo _$IntradayInfoFromJson(Map<String, dynamic> json) {
  return _IntradayInfo.fromJson(json);
}

/// @nodoc
mixin _$IntradayInfo {
  DateTime get date => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntradayInfoCopyWith<IntradayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntradayInfoCopyWith<$Res> {
  factory $IntradayInfoCopyWith(
          IntradayInfo value, $Res Function(IntradayInfo) then) =
      _$IntradayInfoCopyWithImpl<$Res, IntradayInfo>;
  @useResult
  $Res call({DateTime date, double close});
}

/// @nodoc
class _$IntradayInfoCopyWithImpl<$Res, $Val extends IntradayInfo>
    implements $IntradayInfoCopyWith<$Res> {
  _$IntradayInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntradayInfoCopyWith<$Res>
    implements $IntradayInfoCopyWith<$Res> {
  factory _$$_IntradayInfoCopyWith(
          _$_IntradayInfo value, $Res Function(_$_IntradayInfo) then) =
      __$$_IntradayInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double close});
}

/// @nodoc
class __$$_IntradayInfoCopyWithImpl<$Res>
    extends _$IntradayInfoCopyWithImpl<$Res, _$_IntradayInfo>
    implements _$$_IntradayInfoCopyWith<$Res> {
  __$$_IntradayInfoCopyWithImpl(
      _$_IntradayInfo _value, $Res Function(_$_IntradayInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? close = null,
  }) {
    return _then(_$_IntradayInfo(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntradayInfo with DiagnosticableTreeMixin implements _IntradayInfo {
  const _$_IntradayInfo({required this.date, required this.close});

  factory _$_IntradayInfo.fromJson(Map<String, dynamic> json) =>
      _$$_IntradayInfoFromJson(json);

  @override
  final DateTime date;
  @override
  final double close;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntradayInfo(date: $date, close: $close)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntradayInfo'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('close', close));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntradayInfo &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntradayInfoCopyWith<_$_IntradayInfo> get copyWith =>
      __$$_IntradayInfoCopyWithImpl<_$_IntradayInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntradayInfoToJson(
      this,
    );
  }
}

abstract class _IntradayInfo implements IntradayInfo {
  const factory _IntradayInfo(
      {required final DateTime date,
      required final double close}) = _$_IntradayInfo;

  factory _IntradayInfo.fromJson(Map<String, dynamic> json) =
      _$_IntradayInfo.fromJson;

  @override
  DateTime get date;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$_IntradayInfoCopyWith<_$_IntradayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
