import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:intl/intl.dart';

class ISSLocationScreen extends StatefulWidget {
  final DateTime formattedDate;
  ISSLocationScreen(this.formattedDate);
  @override
  _ISSLocationScreenState createState() => _ISSLocationScreenState();
}

class _ISSLocationScreenState extends State<ISSLocationScreen> {
  DateTime date1,
      date2,
      date3,
      date4,
      date5,
      date6,
      date7,
      date8,
      date9,
      date10,
      date11,
      date12,
      date13;

  var timeStamp1,
      timeStamp2,
      timeStamp3,
      timeStamp4,
      timeStamp5,
      timeStamp6,
      timeStamp7,
      timeStamp8,
      timeStamp9,
      timeStamp10,
      timeStamp11,
      timeStamp12,
      timeStamp13;
  @override
  void initState() {
    date1 = widget.formattedDate.subtract(
      const Duration(
        minutes: 60,
      ),
    );
    timeStamp1 = date1.millisecondsSinceEpoch ~/ 1000;
    date2 = widget.formattedDate.subtract(
      const Duration(
        minutes: 50,
      ),
    );
    timeStamp2 = date2.millisecondsSinceEpoch ~/ 1000;
    date3 = widget.formattedDate.subtract(
      const Duration(
        minutes: 40,
      ),
    );
    timeStamp3 = date3.millisecondsSinceEpoch ~/ 1000;
    date4 = widget.formattedDate.subtract(
      const Duration(
        minutes: 30,
      ),
    );
    timeStamp4 = date4.millisecondsSinceEpoch ~/ 1000;
    date5 = widget.formattedDate.subtract(
      const Duration(
        minutes: 20,
      ),
    );
    timeStamp5 = date5.millisecondsSinceEpoch ~/ 1000;
    date6 = widget.formattedDate.subtract(
      const Duration(
        minutes: 10,
      ),
    );
    timeStamp6 = date6.millisecondsSinceEpoch ~/ 1000;
    date7 = widget.formattedDate.subtract(
      const Duration(
        minutes: 0,
      ),
    );
    timeStamp7 = date7.millisecondsSinceEpoch ~/ 1000;
    date8 = widget.formattedDate.add(
      const Duration(
        minutes: 10,
      ),
    );
    timeStamp8 = date8.millisecondsSinceEpoch ~/ 1000;
    date9 = widget.formattedDate.add(
      const Duration(
        minutes: 20,
      ),
    );
    timeStamp9 = date9.millisecondsSinceEpoch ~/ 1000;
    date10 = widget.formattedDate.add(
      const Duration(
        minutes: 30,
      ),
    );
    timeStamp10 = date10.millisecondsSinceEpoch ~/ 1000;
    date11 = widget.formattedDate.add(
      const Duration(
        minutes: 40,
      ),
    );
    timeStamp11 = date11.millisecondsSinceEpoch ~/ 1000;
    date12 = widget.formattedDate.add(
      const Duration(
        minutes: 50,
      ),
    );
    timeStamp12 = date12.millisecondsSinceEpoch ~/ 1000;
    date13 = widget.formattedDate.add(
      const Duration(
        minutes: 60,
      ),
    );
    timeStamp13 = date13.millisecondsSinceEpoch ~/ 1000;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'DateTime and Timestamp',
            style: TextStyle(
              fontFamily: primaryFamilyFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date1.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp1.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date2.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp2.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date3.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp3.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date4.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp4.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date5.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp5.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date6.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp6.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date7.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp7.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date8.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp8.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date9.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp9.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date10.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp10.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date11.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp11.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date12.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp12.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 8,
                ),
                child: Card(
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date13.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp13.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
