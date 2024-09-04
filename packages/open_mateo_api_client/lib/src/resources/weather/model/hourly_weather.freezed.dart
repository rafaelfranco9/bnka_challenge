// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
  List<DateTime> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m => throw _privateConstructorUsedError;

  /// Serializes this HourlyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) then) =
      _$HourlyWeatherCopyWithImpl<$Res, HourlyWeather>;
  @useResult
  $Res call(
      {List<DateTime> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed10m});
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res, $Val extends HourlyWeather>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyWeatherImplCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$HourlyWeatherImplCopyWith(
          _$HourlyWeatherImpl value, $Res Function(_$HourlyWeatherImpl) then) =
      __$$HourlyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed10m});
}

/// @nodoc
class __$$HourlyWeatherImplCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res, _$HourlyWeatherImpl>
    implements _$$HourlyWeatherImplCopyWith<$Res> {
  __$$HourlyWeatherImplCopyWithImpl(
      _$HourlyWeatherImpl _value, $Res Function(_$HourlyWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_$HourlyWeatherImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      temperature2m: null == temperature2m
          ? _value._temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value._relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      windSpeed10m: null == windSpeed10m
          ? _value._windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HourlyWeatherImpl implements _HourlyWeather {
  const _$HourlyWeatherImpl(
      {required final List<DateTime> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final List<int> relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m')
      required final List<double> windSpeed10m})
      : _time = time,
        _temperature2m = temperature2m,
        _relativeHumidity2m = relativeHumidity2m,
        _windSpeed10m = windSpeed10m;

  factory _$HourlyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyWeatherImplFromJson(json);

  final List<DateTime> _time;
  @override
  List<DateTime> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m {
    if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2m);
  }

  final List<int> _relativeHumidity2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m {
    if (_relativeHumidity2m is EqualUnmodifiableListView)
      return _relativeHumidity2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relativeHumidity2m);
  }

  final List<double> _windSpeed10m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m {
    if (_windSpeed10m is EqualUnmodifiableListView) return _windSpeed10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed10m);
  }

  @override
  String toString() {
    return 'HourlyWeather(time: $time, temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, windSpeed10m: $windSpeed10m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyWeatherImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2m, _temperature2m) &&
            const DeepCollectionEquality()
                .equals(other._relativeHumidity2m, _relativeHumidity2m) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed10m, _windSpeed10m));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2m),
      const DeepCollectionEquality().hash(_relativeHumidity2m),
      const DeepCollectionEquality().hash(_windSpeed10m));

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      __$$HourlyWeatherImplCopyWithImpl<_$HourlyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyWeatherImplToJson(
      this,
    );
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather(
      {required final List<DateTime> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final List<int> relativeHumidity2m,
      @JsonKey(name: 'wind_speed_10m')
      required final List<double> windSpeed10m}) = _$HourlyWeatherImpl;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$HourlyWeatherImpl.fromJson;

  @override
  List<DateTime> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relativeHumidity2m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed10m;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
