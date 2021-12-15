import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_api.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';
import 'package:iss_next_assessment/screens/satellite_information_screen.dart';
import 'package:iss_next_assessment/screens/timezone_screen.dart';

class ISSLocationCard extends StatefulWidget {
  int timestamp;
  ISSLocationCard(this.timestamp);
  @override
  _ISSLocationCardState createState() => _ISSLocationCardState();
}

class _ISSLocationCardState extends State<ISSLocationCard> {
  @override
  Widget build(BuildContext context) => FutureBuilder<List<ISSLocationModel>>(
        future: ISSLocationApi.getISSLocation(
          widget.timestamp,
        ),
        builder: (context, snapshot) {
          final location = snapshot.data;
          if (location != null) {
            switch (snapshot.connectionState) {
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Error!'));
                } else {
                  return buildLocationDetail(location, context);
                }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );

  Widget buildLocationDetail(
      List<ISSLocationModel> location, BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: location.length,
      itemBuilder: (ctx, index) {
        final item = location[index];
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
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/satellite.png',
                      width: double.infinity,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const Divider(
                  color: kPrimaryDarkColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Name:',
                          style: TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Id:',
                          style: TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          item.id.toString(),
                          style: const TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Latitude:',
                          style: TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          item.latitude.toString(),
                          style: const TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Longitude:',
                          style: TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          item.longitude.toString(),
                          style: const TextStyle(
                            fontFamily: secondaryFamilyFont,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryLightColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SatelliteInformationScreen(
                        widget.timestamp,
                      ),
                    ),
                  ),
                  label: const FittedBox(
                    child: Text(
                      'Satellite\'s Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kPrimaryDarkColor,
                        fontFamily: secondaryFamilyFont,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.info),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
