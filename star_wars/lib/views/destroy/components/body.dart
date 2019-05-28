import 'package:flutter/material.dart';
import 'package:lottie_flutter/lottie_flutter.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/providers/destroy_provider.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  bool isCreated = false;

  @override
  Widget build(BuildContext context) {
    final destroyProvider = Provider.of<DestroyProvider>(context);

    destroyProvider.destroyPlanet(context, this);

    return Center(
      child: Lottie(
        composition: destroyProvider.composition,
        size: Size(destroyProvider.width, destroyProvider.height),
        controller: destroyProvider.controller,
      ),
    );
  }
}
