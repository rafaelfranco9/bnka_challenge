import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({
    required this.text,
    required this.icon,
    super.key,
  });

  factory WeatherItem.temperature(String temperature) {
    return WeatherItem(
      text: temperature,
      icon: Icons.thermostat_outlined,
    );
  }

  factory WeatherItem.wind(String wind) {
    return WeatherItem(
      text: wind,
      icon: Icons.air,
    );
  }

  factory WeatherItem.humidity(String humidity) {
    return WeatherItem(
      text: humidity,
      icon: Icons.water_drop_outlined,
    );
  }

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black45,
          size: 16,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
