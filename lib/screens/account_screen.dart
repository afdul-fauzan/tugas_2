import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key key}) : super(key: key);
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 67, 189, 118),
          title: Text("Account Screen"),
        ),
        backgroundColor: Color.fromARGB(255, 180, 236, 169),
        body: Center(
          child: Text("This is Account Screen"),
        ));
  }
}
