import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:netflix/frontend/theme/palette.dart';
import 'package:netflix/frontend/pages/connexion.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    loadAnimation();
  }

  Future <Timer> loadAnimation() async {
    return Timer(
      const Duration(seconds: 3),
      onLoaded
    );
  }

  onLoaded(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Connexion())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.black,
      body: Lottie.asset(
          "assets/lotties/netflix.json",
        repeat: false,
      ),
    );
  }
}

