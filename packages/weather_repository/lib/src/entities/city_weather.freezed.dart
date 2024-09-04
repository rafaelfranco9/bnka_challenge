// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityWeather {
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  WeatherData get currentWeather => throw _privateConstructorUsedError;
  Map<DateTime, WeatherData> get hourlyWeather =>
      throw _privateConstructorUsedError;

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityWeatherCopyWith<CityWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityWeatherCopyWith<$Res> {
  factory $CityWeatherCopyWith(
          CityWeather value, $Res Function(CityWeather) then) =
      _$CityWeatherCopyWithImpl<$Res, CityWeather>;
  @useResult
  $Res call(
      {String country,
      String city,
      double latitude,
      double longitude,
      WeatherData currentWeather,
      Map<DateTime, WeatherData> hourlyWeather});

  $WeatherDataCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$CityWeatherCopyWithImpl<$Res, $Val extends CityWeather>
    implements $CityWeatherCopyWith<$Res> {
  _$CityWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? currentWeather = null,
    Object? hourlyWeather = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherData,
      hourlyWeather: null == hourlyWeather
          ? _value.hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherData>,
    ) as $Val);
  }

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherDataCopyWith<$Res> get currentWeather {
    return $WeatherDataCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityWeatherImplCopyWith<$Res>
    implements $CityWeatherCopyWith<$Res> {
  factory _$$CityWeatherImplCopyWith(
          _$CityWeatherImpl value, $Res Function(_$CityWeatherImpl) then) =
      __$$CityWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String city,
      double latitude,
      double longitude,
      WeatherData currentWeather,
      Map<DateTime, WeatherData> hourlyWeather});

  @override
  $WeatherDataCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$CityWeatherImplCopyWithImpl<$Res>
    extends _$CityWeatherCopyWithImpl<$Res, _$CityWeatherImpl>
    implements _$$CityWeatherImplCopyWith<$Res> {
  __$$CityWeatherImplCopyWithImpl(
      _$CityWeatherImpl _value, $Res Function(_$CityWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? currentWeather = null,
    Object? hourlyWeather = null,
  }) {
    return _then(_$CityWeatherImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherData,
      hourlyWeather: null == hourlyWeather
          ? _value._hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, WeatherData>,
    ));
  }
}

/// @nodoc

class _$CityWeatherImpl implements _CityWeather {
  const _$CityWeatherImpl(
      {required this.country,
      required this.city,
      required this.latitude,
      required this.longitude,
      required this.currentWeather,
      required final Map<DateTime, WeatherData> hourlyWeather})
      : _hourlyWeather = hourlyWeather;

  @override
  final String country;
  @override
  final String city;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final WeatherData currentWeather;
  final Map<DateTime, WeatherData> _hourlyWeather;
  @override
  Map<DateTime, WeatherData> get hourlyWeather {
    if (_hourlyWeather is EqualUnmodifiableMapView) return _hourlyWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hourlyWeather);
  }

  @override
  String toString() {
    return 'CityWeather(country: $country, city: $city, latitude: $latitude, longitude: $longitude, currentWeather: $currentWeather, hourlyWeather: $hourlyWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityWeatherImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality()
                .equals(other._hourlyWeather, _hourlyWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      city,
      latitude,
      longitude,
      currentWeather,
      const DeepCollectionEquality().hash(_hourlyWeather));

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityWeatherImplCopyWith<_$CityWeatherImpl> get copyWith =>
      __$$CityWeatherImplCopyWithImpl<_$CityWeatherImpl>(this, _$identity);
}

abstract class _CityWeather implements CityWeather {
  const factory _CityWeather(
          {required final String country,
          required final String city,
          required final double latitude,
          required final double longitude,
          required final WeatherData currentWeather,
          required final Map<DateTime, WeatherData> hourlyWeather}) =
      _$CityWeatherImpl;

  @override
  String get country;
  @override
  String get city;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  WeatherData get currentWeather;
  @override
  Map<DateTime, WeatherData> get hourlyWeather;

  /// Create a copy of CityWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityWeatherImplCopyWith<_$CityWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
