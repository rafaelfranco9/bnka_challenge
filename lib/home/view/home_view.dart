import 'package:bnka_challenge/favorites/bloc/bloc.dart';
import 'package:bnka_challenge/home/widgets/dashboard_failure.dart';
import 'package:bnka_challenge/home/widgets/home_dashboard.dart';
import 'package:bnka_challenge/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Dashboard',
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          final cities = state.favorites.values.toList();
          return switch (state.status) {
            FavoritesStatus.initial => const SizedBox.shrink(),
            FavoritesStatus.loading =>
              const Center(child: CircularProgressIndicator()),
            FavoritesStatus.success => HomeDashboard(cities: cities),
            FavoritesStatus.error => DashboardFailure(
                onRetry: context.read<FavoritesCubit>().init,
              ),
          };
        },
      ),
    );
  }
}
