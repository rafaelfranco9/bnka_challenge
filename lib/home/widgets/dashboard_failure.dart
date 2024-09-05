import 'package:flutter/material.dart';

class DashboardFailure extends StatelessWidget {
  const DashboardFailure({required this.onRetry, super.key});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Error al cargar las ciudades favoritas',
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: const Text(
            'Reintentar',
            textAlign: TextAlign.center,
          ),
          onPressed: onRetry,
        ),
      ],
    );
  }
}
