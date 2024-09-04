// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      time: DateTime.parse(json['time'] as String),
      temperature2m: (json['temperature_2m'] as num).toDouble(),
      relativeHumidity2m: (json['relative_humidity_2m'] as num).toInt(),
      windSpeed10m: (json['wind_speed_10m'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'wind_speed_10m': instance.windSpeed10m,
    };
