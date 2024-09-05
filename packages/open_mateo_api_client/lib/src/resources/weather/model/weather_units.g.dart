// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherUnitsImpl _$$WeatherUnitsImplFromJson(Map<String, dynamic> json) =>
    _$WeatherUnitsImpl(
      temperature2m: json['temperature_2m'] as String,
      relativeHumidity2m: json['relative_humidity_2m'] as String,
      windSpeed10m: json['wind_speed_10m'] as String,
    );

Map<String, dynamic> _$$WeatherUnitsImplToJson(_$WeatherUnitsImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'wind_speed_10m': instance.windSpeed10m,
    };
