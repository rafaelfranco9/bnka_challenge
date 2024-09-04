import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.body, super.key, this.title});

  final String? title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null
          ? AppBar(
              backgroundColor: Colors.cyan,
              title: Text(title!),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: body,
        ),
      ),
    );
  }
}
