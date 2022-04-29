import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_2/views/grid_view.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

void main() => runApp(MaterialApp(home: MoreScreen()));

class MoreScreen extends StatefulWidget {
  @override
  MoreState createState() => new MoreState();
}

class MoreState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("More Screen"),
      ),
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
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
                      padding: EdgeInsets.only(left: 250),
                      onPressed: () {
                        // do something
                      },
                    ),
                    CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(1), // Border radius
                        child: ClipOval(
                            child: Image.asset("assets/pic/linus.jpg")),
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
    );
  }
}
