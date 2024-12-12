import 'package:flutter/material.dart';

class CostumBackground extends StatelessWidget {
  final Widget widget;
  const CostumBackground({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.only(left: 12, right: 10, top: 60, bottom: 55),
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Color.fromARGB(255, 75, 50, 124), // Lighter Purple at the center
          Color.fromARGB(255, 28, 20, 46), // Darker Purple at the edges
        ], center: Alignment.bottomCenter, radius: 0.8),
      ),
      child: widget,
    );
  }
}
