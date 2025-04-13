import 'package:flutter/material.dart';

class HorizontalSpacer extends StatelessWidget {
  final double width;
  const HorizontalSpacer({super.key, this.width = 10});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
