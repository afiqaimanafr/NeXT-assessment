import 'package:flutter/material.dart';

class ISSLocationModel {
  final String name;
  final int id;
  final double latitude;
  final double longitude;
  final double altitude;
  final double velocity;
  final String visibility;
  final double footprint;
  final int timestamp;
  final double daynum;
  final double solar_lat;
  final double solar_lon;
  final String units;

  const ISSLocationModel({
    @required this.name,
    @required this.id,
    @required this.latitude,
    @required this.longitude,
    @required this.altitude,
    @required this.velocity,
    @required this.visibility,
    @required this.footprint,
    @required this.timestamp,
    @required this.daynum,
    @required this.solar_lat,
    @required this.solar_lon,
    @required this.units,
  });

  factory ISSLocationModel.fromJson(Map<String, dynamic> json) =>
      ISSLocationModel(
        name: json['name'],
        id: json['id'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        altitude: json['altitude'],
        velocity: json['velocity'],
        visibility: json['visibility'],
        footprint: json['footprint'],
        timestamp: json['timestamp'],
        daynum: json['daynum'],
        solar_lat: json['solar_lat'],
        solar_lon: json['solar_lon'],
        units: json['units'],
      );
}
