import 'package:bnka_challenge/home/home.dart';
import 'package:bnka_challenge/shared/app_scaffold.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _start = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {
        _start = true;
      }),
    );

    Future.delayed(
      const Duration(milliseconds: 3500),
      () => Navigator.of(context).pushReplacementNamed(HomePage.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          AnimatedAlign(
            alignment: _start ? Alignment.centerRight : Alignment.centerLeft,
            duration: const Duration(seconds: 3),
            child: UnconstrainedBox(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                child: const Icon(Icons.sunny, size: 100, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
