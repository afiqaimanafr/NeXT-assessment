import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';
import 'package:iss_next_assessment/models/json_format_data/json_format_data_api.dart';

class JsonCard extends StatefulWidget {
  int time;
  JsonCard(this.time);
  @override
  _JsonCardState createState() => _JsonCardState();
}

class _JsonCardState extends State<JsonCard> {
  @override
  Widget build(BuildContext context) => FutureBuilder<List<ISSLocationModel>>(
        future: JsonFormatDataApi.getJsonData(
          widget.time,
        ),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data != null) {
            switch (snapshot.connectionState) {
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Error!'));
                } else {
                  return buildJsonDetail(data, context);
                }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );

  Widget buildJsonDetail(List<ISSLocationModel> data, BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (ctx, index) {
        final item = data[index];
        return Container(
          padding: const EdgeInsets.all(15),
          width: size.width * 0.8,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: kPrimaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'Data in JSON Format',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: primaryFamilyFont,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '[{name: ${item.name}, id: ${item.id}, latitude: ${item.latitude}, longitude: ${item.longitude}, altitude: ${item.altitude}, velocity: ${item.velocity}, visibility: ${item.visibility}, footprint: ${item.footprint}, timestamp: ${item.timestamp}, daynum: ${item.daynum}, solar_lat: ${item.solar_lat}, solar_lon: ${item.solar_lon}, units: ${item.units}}]',
                          style: const TextStyle(
                            fontFamily: secondaryFamilyFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
