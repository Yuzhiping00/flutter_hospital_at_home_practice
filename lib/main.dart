import 'package:flutter/material.dart';
import 'vital_results_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital At Home Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(43, 120, 228, 1),
        ),
      ),
      // home: VitalHistory(appBarTitle: 'Blood Pressure History'),
      home: VitalResultsPage(appBarTitle: '', pageTitle: "Vital Results"),
    );
  }
}
