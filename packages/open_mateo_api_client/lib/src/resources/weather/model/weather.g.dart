// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timezone: json['timezone'] as String,
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      hourly: HourlyWeather.fromJson(json['hourly'] as Map<String, dynamic>),
      currentUnits:
          WeatherUnits.fromJson(json['current_units'] as Map<String, dynamic>),
      hourlyUnits:
          WeatherUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'current': instance.current,
      'hourly': instance.hourly,
      'current_units': instance.currentUnits,
      'hourly_units': instance.hourlyUnits,
    };
