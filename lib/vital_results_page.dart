import 'package:flutter/material.dart';
import 'package:flutter_hospital_at_home_practice/vital_history.dart';
import 'package:flutter_hospital_at_home_practice/vital_result_card.dart';
import 'custom_app_bar.dart';

class VitalResultsPage extends StatelessWidget {
  const VitalResultsPage({
    super.key,
    required this.appBarTitle,
    required this.pageTitle,
  });
  final String appBarTitle;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: appBarTitle),
      body: ListView(
        children: [
          //page title
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 15, left: 16, right: 16),
            child: Text(
              pageTitle,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          VitalResultCard(
            icon: Icons.opacity, // blood pressure drop icon
            title: 'Blood Pressure',
            value: '120/80 | 60',
            lastTaken: '5:30 PM',
            onHistoryTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VitalHistory(appBarTitle: "Blood Pressure History"),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          VitalResultCard(
            icon: Icons.favorite, // heart icon for oxygen
            title: 'Blood Oxygen Level',
            value: '98%',
            lastTaken: '5:00 PM',
            onHistoryTap: () {},
          ),

          SizedBox(height: 20),
          VitalResultCard(
            icon: Icons.thermostat, // thermometer icon
            title: 'Temperature',
            value: '36.6 °C',
            lastTaken: '3:30 PM',
            onHistoryTap: () {},
          ),
          SizedBox(height: 20),
          VitalResultCard(
            icon: Icons.monitor_weight, // weight icon
            title: 'Weight',
            value: '56 kg',
            lastTaken: '4:30 PM',
            onHistoryTap: () {},
          ),
        ],
      ),
    );
  }
}
