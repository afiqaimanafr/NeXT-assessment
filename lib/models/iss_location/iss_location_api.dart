import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';

class ISSLocationApi {
  static Future<List<ISSLocationModel>> getISSLocation(timestamp) async {
    final issLocationURL =
        'https://api.wheretheiss.at/v1/satellites/25544/positions?timestamps=' +
            timestamp.toString() +
            '&units=kilometers';
    final response = await http.get(
      Uri.parse(
        issLocationURL,
      ),
    );
    if (response.statusCode == 200) {
      print(response.statusCode);
      final List body = json.decode(response.body);
      print(response.body);
      return body.map((json) => ISSLocationModel.fromJson(json)).toList();
    } else {
      throw Exception();
    }
  }
}
