import 'dart:ui';
import 'package:flame/components/component.dart';
import 'package:flame/palette.dart';

class Background extends PositionComponent {
  Size screenSize;
  bool painted = false;
  double position;
  PaletteEntry backgroundColor;

  Background(Size scnSize, double pos, PaletteEntry color) {
    screenSize = scnSize;
    position = pos;
    backgroundColor = color;
  }

  @override
  void render(Canvas c) {
    prepareCanvas(c);

    c.drawRect(Rect.fromLTWH(0, position, screenSize.width, screenSize.height),
        Paint()..color = backgroundColor.color);
  }

  @override
  void update(double t) {}
}
