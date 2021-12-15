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
        latitude: json['latitude'] == null ? null : json["latitude"],
        longitude: json['longitude'] == null ? null : json["longitude"],
        timezone_id: json['timezone_id'] == null ? null : json["timezone_id"],
        offset: json['offset'] == null ? null : json["offset"],
        country_code:
            json['country_code'] == null ? null : json["country_code"],
        map_url: json['map_url'] == null ? null : json["map_url"],
      );

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['latitude'] = this.latitude;
  //   data['longitude'] = this.longitude;
  //   data['timezone_id'] = this.timezone_id;
  //   data['offset'] = this.offset;
  //   data['country_code'] = this.country_code;
  //   data['map_url'] = this.map_url;
  //   return data;
  // }
}
