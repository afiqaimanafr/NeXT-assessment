import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/widgets/json_card.dart';

class JsonScreen extends StatefulWidget {
  int time;
  JsonScreen(this.time);
  @override
  _JsonScreenState createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JSON Format Data',
          style: TextStyle(
            fontFamily: primaryFamilyFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: JsonCard(widget.time),
    );
  }
}
