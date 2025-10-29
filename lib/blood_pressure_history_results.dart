import 'package:flutter/material.dart';
import 'blood_pressure_value.dart';
import 'blood_pressure_measurement_date.dart';
import 'time_line_list_view.dart';

class BloodPressureAllResults extends StatelessWidget {
  const BloodPressureAllResults({super.key, required this.bloodPressureData});
  final List<Map<String, dynamic>> bloodPressureData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemCount: bloodPressureData.length,
        itemBuilder: (context, index) {
          final item = bloodPressureData[index];
          final date = item['date'];
          final times = item['times'] as List<String>;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Blood Pressure summary (static or dynamic)
              if (index == 0) ...[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BloodPressureResult(
                        value: "120/80",
                        isLeft: true,
                        boxHeight: 50,
                        textSize: 18,
                        textPadding: 10,
                      ),
                      BloodPressureResult(
                        value: "70",
                        isLeft: false,
                        boxHeight: 50,
                        textSize: 18,
                        textPadding: 10,
                      ),
                    ],
                  ),
                ),
              ],
              // Date row
              BloodPressureResultDate(date: date),
              // Timeline list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                    minWidth: 300,
                  ),
                  child: TimelineListView(data: times),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
