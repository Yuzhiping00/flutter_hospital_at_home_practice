import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'blood_pressure_result.dart';
import 'blood_pressure_result_date.dart';
import 'time_line_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlueAccent.shade700,
        ),
      ),
      home: VitalHistory(title: 'Blood Pressure History'),
    );
  }
}

class VitalHistory extends StatelessWidget {
  VitalHistory({super.key, required this.title});
  final String title;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(214, 222, 225, 0.9),
        title: Text(
          "Blood Pressure History",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FaIcon(FontAwesomeIcons.angleLeft),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.solidCircleQuestion,
                color: Color.fromRGBO(163, 73, 164, 0.9),
              ), // The help icon
              onPressed: () {
                // Define what happens when the help icon is pressed
                print('Help icon pressed!');
              },
            ),
          ),
        ],
      ),
      body: Padding(
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
      ),
    );
  }
}
