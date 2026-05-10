import 'package:assignment_9/widget/category.dart';
import 'package:flutter/material.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Aliya"),
              accountEmail: Text("aliya123@gmial.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              decoration: BoxDecoration(color: Color(0xffF83758)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.black),
            );
          },
        ),
        title: Row(
          children: [
            Spacer(),
            Image.asset(
              "assets/images/logoipsum-255 1.png",
              height: 60,
              width: 120,
            ),
            Spacer(),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
                labelText: "Search any Product",
                suffixIcon: Icon(Icons.mic),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "All Featured",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Text("Sort"),
                          icon: Icon(Icons.swap_vert),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            iconColor: Colors.black,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: Text("Filter"),
                          icon: Icon(Icons.filter_alt),
                          style: ElevatedButton.styleFrom(
                            iconColor: Colors.black,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Category(
                    belowText: "Beauty",
                    imgurl: 'assets/images/beauty.jpg',
                  ),
                  SizedBox(width: 20),
                  Category(
                    belowText: "Fashion",
                    imgurl: 'assets/images/fashion.jpg',
                  ),
                  SizedBox(width: 20),
                  Category(belowText: "Kids", imgurl: 'assets/images/kids.jpg'),
                  SizedBox(width: 20),
                  Category(belowText: "Mens", imgurl: 'assets/images/mens.jpg'),
                  SizedBox(width: 20),
                  Category(
                    belowText: "Womens",
                    imgurl: 'assets/images/womens.jpg',
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
