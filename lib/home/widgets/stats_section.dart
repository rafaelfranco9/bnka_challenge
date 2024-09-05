import 'package:bnka_challenge/extensions/weather_data_extension.dart';
import 'package:bnka_challenge/home/widgets/home_stats_card.dart';
import 'package:flutter/material.dart';
import 'package:weather_repository/weather_repository.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({
    required this.lowestTemperature,
    required this.highestTemperature,
    required this.citiesQuantity,
    super.key,
  });

  final CityWeather lowestTemperature;
  final CityWeather highestTemperature;
  final int citiesQuantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HomeStatsCard(
            title: lowestTemperature.currentWeather.temperature,
            subtitle: lowestTemperature.city,
            helperText: 'Lowest',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: HomeStatsCard(
            title: citiesQuantity.toString(),
            subtitle: 'Cities',
            helperText: 'Favorites',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: HomeStatsCard(
            title: highestTemperature.currentWeather.temperature,
            subtitle: highestTemperature.city,
            helperText: 'Highest',
          ),
        ),
      ],
    );
  }
}
