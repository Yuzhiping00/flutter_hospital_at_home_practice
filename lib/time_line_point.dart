import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'time_line_indicator.dart';

class TimelinePoint extends StatelessWidget {
  final String time;
  final bool isFirst;
  final bool isLast;
  final Widget child;

  const TimelinePoint({
    super.key,
    required this.time,
    required this.child,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).colorScheme.primary;

    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          alignment: TimelineAlign.start,
          indicatorStyle: IndicatorStyle(
            height: 13,
            width: 13,
            drawGap: true,
            color: color,
            indicator: TimelineIndicator(color: color),
          ),
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.primary,
            thickness: 3,
          ),
          endChild: child,
        ),
      ),
    );
  }
}
