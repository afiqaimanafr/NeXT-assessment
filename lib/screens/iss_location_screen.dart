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

  var timeStamp7;
  @override
  void initState() {
    date1 = widget.formattedDate.subtract(
      const Duration(
        minutes: 60,
      ),
    );
    date2 = widget.formattedDate.subtract(
      const Duration(
        minutes: 50,
      ),
    );
    date3 = widget.formattedDate.subtract(
      const Duration(
        minutes: 40,
      ),
    );
    date4 = widget.formattedDate.subtract(
      const Duration(
        minutes: 30,
      ),
    );
    date5 = widget.formattedDate.subtract(
      const Duration(
        minutes: 20,
      ),
    );
    date6 = widget.formattedDate.subtract(
      const Duration(
        minutes: 10,
      ),
    );
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
    date9 = widget.formattedDate.add(
      const Duration(
        minutes: 20,
      ),
    );
    date10 = widget.formattedDate.add(
      const Duration(
        minutes: 30,
      ),
    );
    date11 = widget.formattedDate.add(
      const Duration(
        minutes: 40,
      ),
    );
    date12 = widget.formattedDate.add(
      const Duration(
        minutes: 50,
      ),
    );
    date13 = widget.formattedDate.add(
      const Duration(
        minutes: 60,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ISS Location',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Text(
        timeStamp7.toString(),
      ),
    );
  }
}
