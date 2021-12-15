import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/widgets/satellite_information_card.dart';

class SatelliteInformationScreen extends StatelessWidget {
  int time;
  SatelliteInformationScreen(this.time);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Satellite Information',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SatelliteInformationCard(time),
    );
  }
}
