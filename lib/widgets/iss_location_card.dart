import 'package:flutter/material.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_api.dart';
import 'package:iss_next_assessment/models/iss_location/iss_location_model.dart';

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
    final selectedTimestamp = location
        .where((timestampSelected) =>
            timestampSelected.timestamp == widget.timestamp)
        .toList();
    return ListView.builder(
      itemCount: selectedTimestamp.length,
      itemBuilder: (ctx, index) {
        final item = selectedTimestamp[index];
        return Text(
          item.timestamp.toString(),
        );
      },
    );
  }
}
