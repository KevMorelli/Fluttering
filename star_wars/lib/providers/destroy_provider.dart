import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie_flutter/lottie_flutter.dart';

class DestroyProvider with ChangeNotifier {
  LottieComposition composition;
  AnimationController controller;
  String _animation;
  bool loaded = false;
  double width = 0;
  double height = 0;

  DestroyProvider(String animation) {
    _animation = animation;
  }

  Future<LottieComposition> loadAsset(String assetName) async {
    return await rootBundle
        .loadString(assetName)
        .then<Map<String, dynamic>>((String data) => json.decode(data))
        .then((Map<String, dynamic> map) => LottieComposition.fromMap(map));
  }

  void destroyPlanet(BuildContext context, TickerProvider tickerProvider) {
    if (controller != null) return;

    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: tickerProvider,
    );

    loadAsset(_animation).then((LottieComposition comp) {
      composition = comp;

      width = MediaQuery.of(context).size.width + comp.bounds.topCenter.dx;
      height = MediaQuery.of(context).size.height + comp.bounds.topCenter.dy;

      notifyListeners();

      controller.reset();
      controller.forward().then((_) => Navigator.pop(context));
    });
  }
}
