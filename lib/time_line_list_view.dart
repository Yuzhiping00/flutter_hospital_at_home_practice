import 'package:flutter/material.dart';
import 'time_line_point.dart';
import 'blood_pressure_result.dart';

class TimelineListView extends StatelessWidget {
  const TimelineListView({super.key, required this.data});

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 500,
        minHeight: 300,
        maxWidth: 250,
        minWidth: 100,
      ),
      child: ListView.builder(
        itemExtent: 60,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return TimelinePoint(
            time: data[index],
            isFirst: index == 0,
            isLast: index == data.length - 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(data[index]),
                SizedBox(width: 20),
                BloodPressureResult(
                  value: "120/80",
                  isLeft: true,
                  boxHeight: 30,
                  textSize: 12,
                  textPadding: 6,
                ),
                BloodPressureResult(
                  value: "60",
                  isLeft: false,
                  boxHeight: 30,
                  textSize: 12,
                  textPadding: 6,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
