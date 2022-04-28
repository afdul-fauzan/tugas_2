import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key key}) : super(key: key);
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 104, 104),
          title: Text("Feed Screen"),
        ),
        backgroundColor: Color.fromARGB(255, 236, 169, 169),
        body: Center(
          child: Text("This is Feed Screen"),
        ));
  }
}
