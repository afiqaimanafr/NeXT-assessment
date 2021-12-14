import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';

class ISSLocationScreen extends StatefulWidget {
  final String formattedDate;
  ISSLocationScreen(this.formattedDate);
  @override
  _ISSLocationScreenState createState() => _ISSLocationScreenState();
}

class _ISSLocationScreenState extends State<ISSLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ISS Location',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(widget.formattedDate),
      ),
    );
  }
}
