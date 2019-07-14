import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flutter/services.dart';
import 'package:reaction/entities/background.dart';
import 'package:reaction/entities/ball.dart';
import 'package:reaction/helpers/palette.dart';

class Reaction extends BaseGame {
  Reaction() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  void resize(Size size) {
    super.resize(size);

    add(Background(size, 0, Palette.blue));
    add(Background(size, size.height / 2, Palette.red));
    add(Ball(50.0, size));
  }
}
