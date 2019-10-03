import 'package:flutter/material.dart';
import 'package:lottie_flutter/lottie_flutter.dart';
import 'package:star_wars/core/viewmodels/destroy_viewmodel.dart';
import 'package:star_wars/ui/views/base_widget.dart';

class DestroyView extends StatefulWidget {
  final String _animation;

  DestroyView(this._animation);

  @override
  State<StatefulWidget> createState() => _DestroyViewState();
}

class _DestroyViewState extends State<DestroyView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<DestroyViewModel>(
      model: DestroyViewModel(widget._animation, context, this),
      builder: (context, viewModel, child) => Lottie(
        composition: viewModel.composition,
        size: Size(viewModel.width, viewModel.height),
        controller: viewModel.controller,
      ),
    );
  }
}
