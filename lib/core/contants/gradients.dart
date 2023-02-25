import 'package:flutter/material.dart';

class Gradients {
  static Gradients? _instance;

  static Gradients get instance => _instance ??= Gradients._init();

  Gradients._init();

  Gradient LoginPageGradients = LinearGradient(
      begin: Alignment.center,
      end: Alignment.topCenter,
      colors: [
        Color.fromRGBO(160, 163, 206, 1),
        Color.fromRGBO(43, 120, 180, 1)
      ]);
}
