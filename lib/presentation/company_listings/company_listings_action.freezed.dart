// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listings_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyListingsAction<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingsActionCopyWith<T, $Res> {
  factory $CompanyListingsActionCopyWith(CompanyListingsAction<T> value,
          $Res Function(CompanyListingsAction<T>) then) =
      _$CompanyListingsActionCopyWithImpl<T, $Res, CompanyListingsAction<T>>;
}

/// @nodoc
class _$CompanyListingsActionCopyWithImpl<T, $Res,
        $Val extends CompanyListingsAction<T>>
    implements $CompanyListingsActionCopyWith<T, $Res> {
  _$CompanyListingsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCopyWith<T, $Res> {
  factory _$$RefreshCopyWith(
          _$Refresh<T> value, $Res Function(_$Refresh<T>) then) =
      __$$RefreshCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<T, $Res>
    extends _$CompanyListingsActionCopyWithImpl<T, $Res, _$Refresh<T>>
    implements _$$RefreshCopyWith<T, $Res> {
  __$$RefreshCopyWithImpl(
      _$Refresh<T> _value, $Res Function(_$Refresh<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh<T> with DiagnosticableTreeMixin implements Refresh<T> {
  const _$Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListingsAction<$T>.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CompanyListingsAction<$T>.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh<T> implements CompanyListingsAction<T> {
  const factory Refresh() = _$Refresh<T>;
}

/// @nodoc
abstract class _$$OnSearchQueryChangeCopyWith<T, $Res> {
  factory _$$OnSearchQueryChangeCopyWith(_$OnSearchQueryChange<T> value,
          $Res Function(_$OnSearchQueryChange<T>) then) =
      __$$OnSearchQueryChangeCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnSearchQueryChangeCopyWithImpl<T, $Res>
    extends _$CompanyListingsActionCopyWithImpl<T, $Res,
        _$OnSearchQueryChange<T>>
    implements _$$OnSearchQueryChangeCopyWith<T, $Res> {
  __$$OnSearchQueryChangeCopyWithImpl(_$OnSearchQueryChange<T> _value,
      $Res Function(_$OnSearchQueryChange<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnSearchQueryChange<T>(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchQueryChange<T>
    with DiagnosticableTreeMixin
    implements OnSearchQueryChange<T> {
  const _$OnSearchQueryChange(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyListingsAction<$T>.onSearchQueryChange(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CompanyListingsAction<$T>.onSearchQueryChange'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchQueryChange<T> &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchQueryChangeCopyWith<T, _$OnSearchQueryChange<T>> get copyWith =>
      __$$OnSearchQueryChangeCopyWithImpl<T, _$OnSearchQueryChange<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return onSearchQueryChange(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String query)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
    required TResult Function(OnSearchQueryChange<T> value) onSearchQueryChange,
  }) {
    return onSearchQueryChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
    TResult? Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    TResult Function(OnSearchQueryChange<T> value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(this);
    }
    return orElse();
  }
}

abstract class OnSearchQueryChange<T> implements CompanyListingsAction<T> {
  const factory OnSearchQueryChange(final String query) =
      _$OnSearchQueryChange<T>;

  String get query;
  @JsonKey(ignore: true)
  _$$OnSearchQueryChangeCopyWith<T, _$OnSearchQueryChange<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
