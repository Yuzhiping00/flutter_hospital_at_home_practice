import 'package:flutter/material.dart';

class TimelineIndicator extends StatelessWidget {
  const TimelineIndicator({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 3),
        shape: BoxShape.circle,
      ),
    );
  }
}
