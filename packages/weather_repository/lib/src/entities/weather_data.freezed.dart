// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherData {
  DateTime get time => throw _privateConstructorUsedError;
  double get windSpeed10m => throw _privateConstructorUsedError;
  String get windSpeed10mUnit => throw _privateConstructorUsedError;
  double get temperature2m => throw _privateConstructorUsedError;
  String get temperature2mUnit => throw _privateConstructorUsedError;
  int get relativeHumidity2m => throw _privateConstructorUsedError;
  String get relativeHumidity2mUnit => throw _privateConstructorUsedError;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res, WeatherData>;
  @useResult
  $Res call(
      {DateTime time,
      double windSpeed10m,
      String windSpeed10mUnit,
      double temperature2m,
      String temperature2mUnit,
      int relativeHumidity2m,
      String relativeHumidity2mUnit});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res, $Val extends WeatherData>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? windSpeed10m = null,
    Object? windSpeed10mUnit = null,
    Object? temperature2m = null,
    Object? temperature2mUnit = null,
    Object? relativeHumidity2m = null,
    Object? relativeHumidity2mUnit = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed10mUnit: null == windSpeed10mUnit
          ? _value.windSpeed10mUnit
          : windSpeed10mUnit // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as double,
      temperature2mUnit: null == temperature2mUnit
          ? _value.temperature2mUnit
          : temperature2mUnit // ignore: cast_nullable_to_non_nullable
              as String,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as int,
      relativeHumidity2mUnit: null == relativeHumidity2mUnit
          ? _value.relativeHumidity2mUnit
          : relativeHumidity2mUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDataImplCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$$WeatherDataImplCopyWith(
          _$WeatherDataImpl value, $Res Function(_$WeatherDataImpl) then) =
      __$$WeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      double windSpeed10m,
      String windSpeed10mUnit,
      double temperature2m,
      String temperature2mUnit,
      int relativeHumidity2m,
      String relativeHumidity2mUnit});
}

/// @nodoc
class __$$WeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherDataCopyWithImpl<$Res, _$WeatherDataImpl>
    implements _$$WeatherDataImplCopyWith<$Res> {
  __$$WeatherDataImplCopyWithImpl(
      _$WeatherDataImpl _value, $Res Function(_$WeatherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? windSpeed10m = null,
    Object? windSpeed10mUnit = null,
    Object? temperature2m = null,
    Object? temperature2mUnit = null,
    Object? relativeHumidity2m = null,
    Object? relativeHumidity2mUnit = null,
  }) {
    return _then(_$WeatherDataImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed10mUnit: null == windSpeed10mUnit
          ? _value.windSpeed10mUnit
          : windSpeed10mUnit // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as double,
      temperature2mUnit: null == temperature2mUnit
          ? _value.temperature2mUnit
          : temperature2mUnit // ignore: cast_nullable_to_non_nullable
              as String,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as int,
      relativeHumidity2mUnit: null == relativeHumidity2mUnit
          ? _value.relativeHumidity2mUnit
          : relativeHumidity2mUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherDataImpl implements _WeatherData {
  const _$WeatherDataImpl(
      {required this.time,
      required this.windSpeed10m,
      required this.windSpeed10mUnit,
      required this.temperature2m,
      required this.temperature2mUnit,
      required this.relativeHumidity2m,
      required this.relativeHumidity2mUnit});

  @override
  final DateTime time;
  @override
  final double windSpeed10m;
  @override
  final String windSpeed10mUnit;
  @override
  final double temperature2m;
  @override
  final String temperature2mUnit;
  @override
  final int relativeHumidity2m;
  @override
  final String relativeHumidity2mUnit;

  @override
  String toString() {
    return 'WeatherData(time: $time, windSpeed10m: $windSpeed10m, windSpeed10mUnit: $windSpeed10mUnit, temperature2m: $temperature2m, temperature2mUnit: $temperature2mUnit, relativeHumidity2m: $relativeHumidity2m, relativeHumidity2mUnit: $relativeHumidity2mUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.windSpeed10m, windSpeed10m) ||
                other.windSpeed10m == windSpeed10m) &&
            (identical(other.windSpeed10mUnit, windSpeed10mUnit) ||
                other.windSpeed10mUnit == windSpeed10mUnit) &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m) &&
            (identical(other.temperature2mUnit, temperature2mUnit) ||
                other.temperature2mUnit == temperature2mUnit) &&
            (identical(other.relativeHumidity2m, relativeHumidity2m) ||
                other.relativeHumidity2m == relativeHumidity2m) &&
            (identical(other.relativeHumidity2mUnit, relativeHumidity2mUnit) ||
                other.relativeHumidity2mUnit == relativeHumidity2mUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      windSpeed10m,
      windSpeed10mUnit,
      temperature2m,
      temperature2mUnit,
      relativeHumidity2m,
      relativeHumidity2mUnit);

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      __$$WeatherDataImplCopyWithImpl<_$WeatherDataImpl>(this, _$identity);
}

abstract class _WeatherData implements WeatherData {
  const factory _WeatherData(
      {required final DateTime time,
      required final double windSpeed10m,
      required final String windSpeed10mUnit,
      required final double temperature2m,
      required final String temperature2mUnit,
      required final int relativeHumidity2m,
      required final String relativeHumidity2mUnit}) = _$WeatherDataImpl;

  @override
  DateTime get time;
  @override
  double get windSpeed10m;
  @override
  String get windSpeed10mUnit;
  @override
  double get temperature2m;
  @override
  String get temperature2mUnit;
  @override
  int get relativeHumidity2m;
  @override
  String get relativeHumidity2mUnit;

  /// Create a copy of WeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherDataImplCopyWith<_$WeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
