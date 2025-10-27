import 'package:flutter/material.dart';

class BloodPressureResult extends StatelessWidget {
  final String value;
  final bool isLeft;
  final double boxHeight;
  final double textSize;

  const BloodPressureResult({
    super.key,
    required this.value,
    this.isLeft = false,
    required this.boxHeight,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      decoration: BoxDecoration(
        borderRadius: isLeft
            ? const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
        border: isLeft
            ? Border.all(color: Colors.black, width: 1.0)
            : Border(
                top: BorderSide(color: Colors.black, width: 1),
                bottom: BorderSide(color: Colors.black, width: 1),
                right: BorderSide(color: Colors.black, width: 1),
              ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            value,
            style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
