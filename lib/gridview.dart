import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(title: "Shopping", img: "assets/icons/shopping.png");
  Items item2 = new Items(
    title: "Ubers",
    img: "assets/icons/ubers.png",
  );
  Items item3 = new Items(
    title: "Groceries",
    img: "assets/icons/groceries.png",
  );
  Items item4 = new Items(
    title: "Dates",
    img: "assets/icons/dates.png",
  );
  Items item5 = new Items(
    title: "Stats",
    img: "assets/icons/stats.png",
  );
  Items item6 = new Items(
    title: "Cards",
    img: "assets/icons/cards.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xB3FFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.3,
          padding: EdgeInsets.only(left: 16, right: 16, top: 40),
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Image.asset(
                    data.img,
                    width: 50,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  SizedBox(
                    height: 0,
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({this.title, this.img});
}
