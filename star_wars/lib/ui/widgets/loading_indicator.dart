import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: CircularProgressIndicator(
          strokeWidth: 6.0,
        ),
        height: 75.0,
        width: 75.0,
      ),
    );
  }
}
