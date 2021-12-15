import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/models/location_weather/weather_model.dart';

class WeatherApi {
  static Future<List<WeatherModel>> getISSWeather(lat, long, timestamp) async {
    final issWeatherURL = 'api.openweathermap.org/data/2.5/weather?lat=' +
        lat +
        '&lon=' +
        long +
        '&appid=' +
        apiKey;

    final response = await http.get(
      Uri.parse(
        issWeatherURL,
      ),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List body = json.decode(response.body);
      print(body);
      return body.map((json) => WeatherModel.fromJson(json)).toList();
    } else {
      throw Exception();
    }
  }
}
