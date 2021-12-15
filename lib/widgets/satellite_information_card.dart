import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_api.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';

class SatelliteInformationCard extends StatefulWidget {
  int time;
  SatelliteInformationCard(this.time);
  @override
  _SatelliteInformationCardState createState() =>
      _SatelliteInformationCardState();
}

class _SatelliteInformationCardState extends State<SatelliteInformationCard> {
  @override
  Widget build(BuildContext context) => FutureBuilder<List<ISSLocationModel>>(
        future: ISSLocationApi.getISSLocation(
          widget.time,
        ),
        builder: (context, snapshot) {
          final location = snapshot.data;
          if (location != null) {
            switch (snapshot.connectionState) {
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Error!'));
                } else {
                  return buildSatelliteDetail(location, context);
                }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );

  Widget buildText(String title, String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Row(
        children: <Widget>[
          Text(title),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Text(
                text,
                maxLines: 3,
                style: const TextStyle(
                  fontFamily: secondaryFamilyFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSatelliteDetail(
      List<ISSLocationModel> location, BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: location.length,
      itemBuilder: (ctx, index) {
        final item = location[index];
        return Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: kPrimaryColor,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/information.png',
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text('Altitude:'),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 8.0,
                                  ),
                                  child: Text(
                                    item.altitude.toString(),
                                    maxLines: 3,
                                    style: const TextStyle(
                                      fontFamily: secondaryFamilyFont,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          buildText(
                            'Velocity:',
                            item.velocity.toString(),
                          ),
                          buildText('Visibility:', item.visibility),
                          buildText(
                            'Solar Latitude:',
                            item.solar_lat.toString(),
                          ),
                          buildText(
                            'Solar Longitude:',
                            item.solar_lon.toString(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
