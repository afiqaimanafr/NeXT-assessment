import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';

class ProjectDetailApi {
  static Future<List<ISSLocationModel>> getISSLocation() async {
    const issLocationURL = 'https://api.wheretheiss.at/v1/satellites/25544';
    final response = await http.get(
      Uri.parse(
        issLocationURL,
      ),
    );
    if (response.statusCode == 200) {
      final List body = json.decode(response.body);
      return body.map((json) => ISSLocationModel.fromJson(json)).toList();
    } else {
      throw Exception();
    }
  }
}
