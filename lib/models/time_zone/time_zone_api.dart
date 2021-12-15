import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iss_next_assessment/models/time_zone/time_zone_model.dart';

class TimeZoneApi {
  static Future<List<TimeZoneModel>> getTimeZone(lat, long) async {
    final timeZoneURL =
        'https://api.wheretheiss.at/v1/coordinates/' + lat + ',' + long;
    print(timeZoneURL);
    final response = await http.get(
      Uri.parse(
        timeZoneURL,
      ),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List body = json.decode(response.body.replaceAll("\\", "/"));
      print(body);

      return body.map((json) => TimeZoneModel.fromJson(json)).toList();
    } else {
      throw Exception();
    }
  }
}
