import 'dart:ui';
import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:reaction/helpers/palette.dart';

class Ball extends PositionComponent {
  Size screenSize;
  var speed = 2;
  var maxSpeed = 20;
  int dirX = 2;
  int dirY = 2;
  var timeToUpdate = 5.0;
  var currentTime = 0.0;

  Ball(double size, Size scnSize) {
    width = height = size;
    anchor = Anchor.center;
    screenSize = scnSize;
  }

  @override
  void resize(Size size) {
    x = size.width / 2;
    y = size.height / 2;
  }

  @override
  void render(Canvas c) {
    prepareCanvas(c);

    c.drawCircle(Offset(0, 0), width, Palette.white.paint);
  }

  @override
  void update(double t) {
    if (speed < maxSpeed) {
      currentTime += t;
      if (currentTime >= timeToUpdate) {
        currentTime = 0;
        speed += 2;
      }
    }

    this.x += dirX;
    this.y += dirY;

    if (this.x <= this.width * 1.5)
      dirX = speed;
    else if (this.x >= (this.screenSize.width - (this.width / 2)))
      dirX = -speed;

    if (this.y <= this.height * 1.5)
      dirY = speed;
    else if (this.y >= (this.screenSize.height - (this.width / 2)))
      dirY = -speed;
  }
}
