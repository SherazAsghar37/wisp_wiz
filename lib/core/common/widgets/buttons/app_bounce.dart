import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class AppBounce extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const AppBounce({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 100),
      onPressed: onPressed,
      child: child,
    );
  }
}
