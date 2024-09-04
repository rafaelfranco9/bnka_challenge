import 'package:bnka_challenge/cities/cities.dart';
import 'package:bnka_challenge/favorites/bloc/bloc.dart';
import 'package:bnka_challenge/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Home',
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return switch (state.status) {
            FavoritesStatus.initial => const SizedBox.shrink(),
            FavoritesStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            FavoritesStatus.success => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text('Favorites'),
                    trailing: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).pushNamed(CitiesPage.route);
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: state.favorites.entries.map((entry) {
                        final weatherData = entry.value;
                        return ListTile(
                          title: Text(weatherData.city),
                          subtitle: Text(
                            weatherData.currentWeather.windSpeed10m.toString(),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {},
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            FavoritesStatus.error => const Center(
                child: Text('Failed to load favorites'),
              ),
          };
        },
      ),
    );
  }
}
