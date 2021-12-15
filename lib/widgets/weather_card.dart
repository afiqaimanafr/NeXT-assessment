import 'package:flutter/material.dart';
import 'package:iss_next_assessment/models/location_weather/weather_api.dart';
import 'package:iss_next_assessment/models/location_weather/weather_model.dart';

class WeatherCard extends StatefulWidget {
  String lat, long;
  int time;
  WeatherCard({
    this.lat,
    this.long,
    this.time,
  });
  @override
  _WeatherCardState createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) => FutureBuilder<List<WeatherModel>>(
        future: WeatherApi.getISSWeather(
          widget.lat,
          widget.long,
        ),
        builder: (context, snapshot) {
          final weather = snapshot.data;
          // ignore: avoid_print
          print(weather);
          if (weather != null) {
            switch (snapshot.connectionState) {
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Error!'));
                } else {
                  return buildWeatherDetail(weather, context);
                }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );

  Widget buildWeatherDetail(List<WeatherModel> weather, BuildContext context) {
    return Container();
  }
}
