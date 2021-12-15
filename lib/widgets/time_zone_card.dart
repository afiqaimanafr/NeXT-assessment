import 'package:flutter/material.dart';
import 'package:iss_next_assessment/models/time_zone/time_zone_api.dart';
import 'package:iss_next_assessment/models/time_zone/time_zone_model.dart';

class TimeZoneCard extends StatefulWidget {
  String lat, long;
  TimeZoneCard({this.lat, this.long});
  @override
  _TimeZoneCardState createState() => _TimeZoneCardState();
}

class _TimeZoneCardState extends State<TimeZoneCard> {
  @override
  Widget build(BuildContext context) => FutureBuilder<List<TimeZoneModel>>(
        future: TimeZoneApi.getTimeZone(
          widget.lat,
          widget.long,
        ),
        builder: (context, snapshot) {
          final timeZone = snapshot.data;

          if (timeZone != null) {
            switch (snapshot.connectionState) {
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Error!'));
                } else {
                  return buildTimeZone(timeZone, context);
                }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );

  Widget buildTimeZone(List<TimeZoneModel> timeZone, BuildContext context) {
    return Container();
  }
}
