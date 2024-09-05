import 'package:bnka_challenge/extensions/datetime_extension.dart';
import 'package:bnka_challenge/extensions/weather_data_extension.dart';
import 'package:bnka_challenge/home/widgets/weather_item.dart';
import 'package:flutter/material.dart';
import 'package:weather_repository/weather_repository.dart';

class CityItem extends StatelessWidget {
  const CityItem({
    required this.cityWeather,
    required this.onTrashPressed,
    super.key,
  });

  final CityWeather cityWeather;
  final VoidCallback onTrashPressed;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        cityWeather.city,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              WeatherItem.temperature(cityWeather.currentWeather.temperature),
              const SizedBox(width: 8),
              WeatherItem.wind(cityWeather.currentWeather.windSpeed),
              const SizedBox(width: 8),
              WeatherItem.humidity(cityWeather.currentWeather.humidity),
            ],
          ),
          const SizedBox(height: 2),
          const Text(
            'Tap to see forecast',
            style: TextStyle(
              fontSize: 12,
              color: Colors.blueAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.black45),
        onPressed: onTrashPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      collapsedBackgroundColor: Colors.grey[200],
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Colors.grey[200],
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forecast',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: cityWeather.hourlyWeather.entries.map((entry) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: [
                              Text(
                                entry.key.monthDay,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(entry.key.hour12Format),
                              const SizedBox(height: 6),
                              WeatherItem.temperature(
                                entry.value.temperature,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                          child: Divider(color: Colors.white, thickness: 4),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
