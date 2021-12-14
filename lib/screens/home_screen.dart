import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            child: Card(
              color: kPrimaryColor,
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Pick Date and Time',
                      style: TextStyle(
                        fontFamily: primaryFamilyFont,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryLightColor,
                    ),
                    onPressed: () {},
                    label: const FittedBox(
                      child: Text(
                        'Select DateTime',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
        )
      ],
    );
  }
}
