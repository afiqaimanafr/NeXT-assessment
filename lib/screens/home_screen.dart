import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:intl/intl.dart';
import 'package:iss_next_assessment/screens/datetime_and_timestamp_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime;

  String getText() {
    if (dateTime == null) {
      return 'Select DateTime';
    } else {
      var formattedDate = DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
      return formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: kPrimaryColor,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30,
                    top: 30,
                  ),
                  child: Text(
                    'Pick Date and Time',
                    style: TextStyle(
                      fontFamily: primaryFamilyFont,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryLightColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () => pickDateTime(context),
                  label: FittedBox(
                    child: Text(
                      getText(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kPrimaryDarkColor,
                        fontFamily: secondaryFamilyFont,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.calendar_today),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        getText() != 'Select DateTime'
            ? ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DateTimeAndTimestampScreen(
                      dateTime,
                    ),
                  ),
                ),
                label: const FittedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Click here to see the ISS location',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kPrimaryDarkColor,
                        fontFamily: secondaryFamilyFont,
                      ),
                    ),
                  ),
                ),
                icon: const Icon(Icons.gps_fixed),
              )
            : const Text(
                'Please select the date and the time to see the ISS location',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: kPrimaryDarkColor,
                  fontFamily: secondaryFamilyFont,
                ),
                textAlign: TextAlign.center,
              ),
      ],
    );
  }

  Future pickDateTime(BuildContext context) async {
    final date = await pickDate(context);
    if (date == null) return;

    final time = await pickTime(context);
    if (time == null) return;

    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future<DateTime> pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTime ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: initialDate,
    );

    if (newDate == null) return null;

    return newDate;
  }

  Future<TimeOfDay> pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 0, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTime != null
          ? TimeOfDay(hour: dateTime.hour, minute: dateTime.minute)
          : initialTime,
    );

    if (newTime == null) return null;

    return newTime;
  }
}
