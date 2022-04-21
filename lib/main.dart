import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_2/gridview.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.only(left: 320),
                      onPressed: () {
                        // do something
                      },
                    ),
                    CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.network(
                                'https://telegra.ph/file/4b3aba775143ce3e3b0cc.jpg')),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Afdul Fauzan",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Members since April 22rd, 2022",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                        color: Color(0xffa29aac),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      width: 150,
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 54, 54, 54),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Share Account",
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0,
          ),
          GridDashboard()
        ],
      ),
      bottomNavigationBar: bmnav.BottomNav(
        items: [
          bmnav.BottomNavItem(Icons.feed, label: 'Feed'),
          bmnav.BottomNavItem(Icons.analytics, label: 'Analytics'),
          bmnav.BottomNavItem(Icons.account_box, label: 'Account'),
          bmnav.BottomNavItem(Icons.more, label: 'More')
        ],
      ),
    );
  }
}
