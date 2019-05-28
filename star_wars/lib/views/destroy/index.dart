import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/providers/destroy_provider.dart';
import 'package:star_wars/views/destroy/components/body.dart';

class DestroyView extends StatelessWidget {
  final String _animation;

  DestroyView(this._animation);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DestroyProvider>(
      builder: (_) => DestroyProvider(_animation),
      child: Body(),
    );
  }
}
