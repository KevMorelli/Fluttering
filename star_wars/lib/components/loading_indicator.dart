import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: CircularProgressIndicator(),
        height: 75.0,
        width: 75.0,
      ),
    );
  }
}
