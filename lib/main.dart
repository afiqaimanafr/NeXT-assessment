import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ISS NeXT Assessment',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ISS NeXT Assessment',
            style: TextStyle(
              fontFamily: primaryFamilyFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: HomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
