// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherUnits _$WeatherUnitsFromJson(Map<String, dynamic> json) {
  return _WeatherUnits.fromJson(json);
}

/// @nodoc
mixin _$WeatherUnits {
  @JsonKey(name: 'temperature_2m')
  String get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  String get relativeHumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  String get windSpeed10m => throw _privateConstructorUsedError;

  /// Serializes this WeatherUnits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherUnitsCopyWith<WeatherUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherUnitsCopyWith<$Res> {
  factory $WeatherUnitsCopyWith(
          WeatherUnits value, $Res Function(WeatherUnits) then) =
      _$WeatherUnitsCopyWithImpl<$Res, WeatherUnits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') String temperature2m,
      @JsonKey(name: 'relative_humidity_2m') String relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') String windSpeed10m});
}

/// @nodoc
class _$WeatherUnitsCopyWithImpl<$Res, $Val extends WeatherUnits>
    implements $WeatherUnitsCopyWith<$Res> {
  _$WeatherUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_value.copyWith(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as String,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherUnitsImplCopyWith<$Res>
    implements $WeatherUnitsCopyWith<$Res> {
  factory _$$WeatherUnitsImplCopyWith(
          _$WeatherUnitsImpl value, $Res Function(_$WeatherUnitsImpl) then) =
      __$$WeatherUnitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') String temperature2m,
      @JsonKey(name: 'relative_humidity_2m') String relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') String windSpeed10m});
}

/// @nodoc
class __$$WeatherUnitsImplCopyWithImpl<$Res>
    extends _$WeatherUnitsCopyWithImpl<$Res, _$WeatherUnitsImpl>
    implements _$$WeatherUnitsImplCopyWith<$Res> {
  __$$WeatherUnitsImplCopyWithImpl(
      _$WeatherUnitsImpl _value, $Res Function(_$WeatherUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_$WeatherUnitsImpl(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as String,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherUnitsImpl implements _WeatherUnits {
  const _$WeatherUnitsImpl(
      {@JsonKey(name: 'temperature_2m') required this.temperature2m,
      @JsonKey(name: 'relative_humidity_2m') required this.relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') required this.windSpeed10m});

  factory _$WeatherUnitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherUnitsImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  final String relativeHumidity2m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final String windSpeed10m;

  @override
  String toString() {
    return 'WeatherUnits(temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, windSpeed10m: $windSpeed10m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherUnitsImpl &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m) &&
            (identical(other.relativeHumidity2m, relativeHumidity2m) ||
                other.relativeHumidity2m == relativeHumidity2m) &&
            (identical(other.windSpeed10m, windSpeed10m) ||
                other.windSpeed10m == windSpeed10m));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperature2m, relativeHumidity2m, windSpeed10m);

  /// Create a copy of WeatherUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherUnitsImplCopyWith<_$WeatherUnitsImpl> get copyWith =>
      __$$WeatherUnitsImplCopyWithImpl<_$WeatherUnitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherUnitsImplToJson(
      this,
    );
  }
}

abstract class _WeatherUnits implements WeatherUnits {
  const factory _WeatherUnits(
      {@JsonKey(name: 'temperature_2m') required final String temperature2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final String relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m')
      required final String windSpeed10m}) = _$WeatherUnitsImpl;

  factory _WeatherUnits.fromJson(Map<String, dynamic> json) =
      _$WeatherUnitsImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_2m')
  String get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  String get relativeHumidity2m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  String get windSpeed10m;

  /// Create a copy of WeatherUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherUnitsImplCopyWith<_$WeatherUnitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
