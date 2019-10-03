import 'package:star_wars/core/viewmodels/base_model.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie_flutter/lottie_flutter.dart';

class DestroyViewModel extends BaseModel {
  LottieComposition composition;
  AnimationController controller;
  String _animation;
  bool loaded = false;
  double width = 0;
  double height = 0;

  BuildContext _buildContext;
  TickerProvider _tickerProvider;

  DestroyViewModel(
    String animation,
    BuildContext buildContext,
    TickerProvider tickerProvider,
  ) {
    _animation = animation;
    _buildContext = buildContext;
    _tickerProvider = tickerProvider;

    playAnimation();
  }

  Future<LottieComposition> loadAsset(String assetName) async {
    return await rootBundle
        .loadString(assetName)
        .then<Map<String, dynamic>>((String data) => json.decode(data))
        .then((Map<String, dynamic> map) => LottieComposition.fromMap(map));
  }

  void playAnimation() {
    if (controller != null) return;

    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: _tickerProvider,
    );

    loadAsset(_animation).then((LottieComposition comp) {
      composition = comp;

      width =
          MediaQuery.of(_buildContext).size.width + comp.bounds.topCenter.dx;
      height =
          MediaQuery.of(_buildContext).size.height + comp.bounds.topCenter.dy;

      notifyListeners();

      controller.reset();
      controller.forward().then((_) => Navigator.pop(_buildContext));
    });
  }
}
