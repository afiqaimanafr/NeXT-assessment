import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/widgets/weather_card.dart';

class WeatherScreen extends StatefulWidget {
  String lat, long;
  int time;
  WeatherScreen({
    this.lat,
    this.long,
    this.time,
  });
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Location\'s Weather',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WeatherCard(
        lat: widget.lat,
        long: widget.long,
        time: widget.time,
      ),
    );
  }
}
