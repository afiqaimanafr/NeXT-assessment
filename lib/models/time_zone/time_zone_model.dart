import 'package:flutter/material.dart';

class TimeZoneModel {
  final String latitude;
  final String longitude;
  final String timezone_id;
  final int offset;
  final String country_code;
  final String map_url;

  const TimeZoneModel({
    @required this.latitude,
    @required this.longitude,
    @required this.timezone_id,
    @required this.offset,
    @required this.country_code,
    @required this.map_url,
  });

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) => TimeZoneModel(
        latitude: json['latitude'],
        longitude: json['longitude'],
        timezone_id: json['timezone_id'],
        offset: json['offset'],
        country_code: json['country_code'],
        map_url: json['map_url'],
      );
}
