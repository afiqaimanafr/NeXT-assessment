import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/screens/json_screen.dart';

class ExtensionBDateTimeScreen extends StatefulWidget {
  final DateTime formattedDate;
  ExtensionBDateTimeScreen(this.formattedDate);
  @override
  _ExtensionBDateTimeScreenState createState() =>
      _ExtensionBDateTimeScreenState();
}

class _ExtensionBDateTimeScreenState extends State<ExtensionBDateTimeScreen> {
  DateTime date;
  var timeStamp;
  @override
  void initState() {
    date = widget.formattedDate.subtract(
      const Duration(
        minutes: 0,
      ),
    );
    timeStamp = date.millisecondsSinceEpoch ~/ 1000;
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
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JsonScreen(timeStamp),
                  ),
                ),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: kPrimaryColor,
                  child: ListTile(
                    title: Text(
                      'DateTime: ${date.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Timestamp: ${timeStamp.toString()}',
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
            ),
          ],
        ),
      ),
    );
  }
}
