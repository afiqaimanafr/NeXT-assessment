import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/widgets/iss_location_card.dart';

class ISSLocationScreen extends StatefulWidget {
  int timestamp;
  ISSLocationScreen(this.timestamp);
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
      body: ISSLocationCard(widget.timestamp),
    );
  }
}
