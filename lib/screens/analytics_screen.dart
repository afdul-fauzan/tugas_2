import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key key}) : super(key: key);
  _AnalyticsState createState() => _AnalyticsState();
}

class _AnalyticsState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 178, 37, 206),
          title: Text("Analytics Screen"),
        ),
        backgroundColor: Color.fromARGB(255, 203, 169, 236),
        body: Center(
          child: Text("This is Analytics Screen"),
        ));
  }
}
