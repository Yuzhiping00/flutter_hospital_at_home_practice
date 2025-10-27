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
      home: const VitalHistory(title: 'Blood Pressure History'),
    );
  }
}

class VitalHistory extends StatelessWidget {
  const VitalHistory({super.key, required this.title});
  final String title;

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
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
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
          Row(children: [BloodPressureResultDate()]),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600, minWidth: 300),
                child: TimelineListView(data: ["5:30pm", "3:00pm", "1:30pm"]),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: 'Schedules',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Activities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monitor_heart_outlined),
              label: 'Vital Results',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Profile',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade500,
        ),
      ),
    );
  }
}
