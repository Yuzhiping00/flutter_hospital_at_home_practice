import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'blood_pressure_history_results.dart';

class VitalHistory extends StatelessWidget {
  final String appBarTitle;
  final List<Map<String, dynamic>> bloodPressureData = [
    {
      "date": "Oct 27, 2025",
      "times": ["5:30 PM", "3:00 PM", "1:30 PM"],
    },
    {
      "date": "Oct 26, 2025",
      "times": ["6:00 PM", "4:15 PM", "2:00 PM"],
    },
    {
      "date": "Oct 25, 2025",
      "times": ["7:00 PM", "5:00 PM"],
    },
  ];

  VitalHistory({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: appBarTitle),
      body: BloodPressureAllResults(bloodPressureData: bloodPressureData),
    );
  }
}
