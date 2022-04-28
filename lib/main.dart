import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:tugas_2/screens/account_screen.dart';
import 'package:tugas_2/screens/analytics_screen.dart';
import 'package:tugas_2/screens/more_screen.dart';
import 'package:tugas_2/screens/feed_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tugas Pertemuan 7',
    home: MainWidget(),
    theme: ThemeData(primaryColor: Colors.blue),
  ));
}

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  int currentTab = 3;
  final List<Widget> screens = [
    FeedScreen(),
    AnalyticsScreen(),
    AccountScreen(),
    MoreScreen()
  ];
  Widget currentScreen = MoreScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: true),
        iconStyle: bmnav.IconStyle(size: 30, onSelectSize: 35),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.feed, label: 'Feed'),
          bmnav.BottomNavItem(Icons.analytics, label: 'Analytics'),
          bmnav.BottomNavItem(Icons.account_balance_wallet, label: 'Accounts'),
          bmnav.BottomNavItem(Icons.more_sharp, label: 'More')
        ],
      ),
    );
  }
}
