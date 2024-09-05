import 'package:bnka_challenge/cities/view/cities_page.dart';
import 'package:bnka_challenge/favorites/bloc/favorites_cubit.dart';
import 'package:bnka_challenge/home/widgets/city_item.dart';
import 'package:bnka_challenge/home/widgets/section_with_button.dart';
import 'package:bnka_challenge/home/widgets/stats_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_repository/weather_repository.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({
    required this.cities,
    super.key,
  });

  final List<CityWeather> cities;

  @override
  Widget build(BuildContext context) {
    final favoriteCubit = context.read<FavoritesCubit>();
    final citiesQuantity = cities.length;
    final highestTemperature = _highestTemperature(cities);
    final lowestTemperature = _lowestTemperature(cities);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        if (citiesQuantity >= 2) ...[
          StatsSection(
            citiesQuantity: citiesQuantity,
            lowestTemperature: lowestTemperature!,
            highestTemperature: highestTemperature!,
          ).animate().fadeIn(duration: 400.ms).moveY(begin: 20),
          const SizedBox(height: 4),
          const Divider(),
          const SizedBox(height: 4),
        ],
        SectionWithButton(
          title: 'Ciudades Favoritas',
          icon: Icons.add,
          onAddPressed: () {
            Navigator.of(context).pushNamed(CitiesPage.route);
          },
        ),
        Expanded(
          child: cities.isEmpty
              ? Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'No hay ciudades favoritas\nAgrega una ciudad usando el botón de arriba',
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : ListView.separated(
                  itemCount: cities.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, index) {
                    final cityWeather = cities[index];
                    return CityItem(
                      cityWeather: cityWeather,
                      onTrashPressed: () {
                        favoriteCubit.deleteByCityName(cityWeather.city);
                      },
                    );
                  },
                )
                  .animate(delay: 400.ms)
                  .fadeIn(duration: 400.ms)
                  .moveY(begin: 20),
        ),
      ],
    );
  }

  CityWeather? _highestTemperature(List<CityWeather> cities) {
    if (cities.isEmpty) return null;
    return cities.reduce((a, b) {
      if (a.currentWeather.temperature2m > b.currentWeather.temperature2m) {
        return a;
      } else {
        return b;
      }
    });
  }

  CityWeather? _lowestTemperature(List<CityWeather> cities) {
    if (cities.isEmpty) return null;
    return cities.reduce((a, b) {
      if (a.currentWeather.temperature2m < b.currentWeather.temperature2m) {
        return a;
      } else {
        return b;
      }
    });
  }
}
