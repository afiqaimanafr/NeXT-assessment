import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/widgets/time_zone_card.dart';

class TimeZoneScreen extends StatelessWidget {
  String lat, long;
  TimeZoneScreen({this.lat, this.long});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Location\'s Time Zone',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: TimeZoneCard(
        lat: lat,
        long: long,
      ),
    );
  }
}
