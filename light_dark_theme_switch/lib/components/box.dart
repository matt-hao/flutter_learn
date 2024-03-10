import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget? child;
  final Color? color;

  const Box({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(50),
      child: child,
    );
  }
}
