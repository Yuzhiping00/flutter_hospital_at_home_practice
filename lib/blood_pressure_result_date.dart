import 'package:flutter/material.dart';

class BloodPressureResultDate extends StatelessWidget {
  const BloodPressureResultDate({super.key, required this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue, // Background color of the container
        border: Border.all(
          color: Colors.black, // Color of the border
          width: 1.0, // Width of the border
        ),
        borderRadius: BorderRadius.circular(
          8.0,
        ), // Optional: for rounded corners
      ),
      //decoration: BoxDecoration(border: Border.all(width: 1.0)),
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,

      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
        child: Text(
          date,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
