import 'package:bnka_challenge/cities/constants/constants.dart';
import 'package:bnka_challenge/favorites/bloc/bloc.dart';
import 'package:bnka_challenge/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Cities',
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return ListView(
            children: kCities.map((city) {
              final isFavorite = state.favorites.containsKey(city);
              return ListTile(
                title: Text(city),
                onTap: () {
                  context.read<FavoritesCubit>().toggleFavorite(city);
                  if (!isFavorite) {
                    Navigator.of(context).pop();
                  }
                },
                trailing: Icon(
                  color: isFavorite ? Colors.blueAccent : Colors.grey,
                  isFavorite
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
