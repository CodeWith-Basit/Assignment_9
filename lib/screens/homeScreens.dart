import 'package:assignment_9/widget/category.dart';
import 'package:assignment_9/widget/productCart.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                    Category(
                      belowText: "Kids",
                      imgurl: 'assets/images/kids.jpg',
                    ),
                    SizedBox(width: 20),
                    Category(
                      belowText: "Mens",
                      imgurl: 'assets/images/mens.jpg',
                    ),
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
            Container(
              margin: EdgeInsets.all(15),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50-40% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Now in (product)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          'All Colors',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Shop Now ",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2.0, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF4392F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm, color: Colors.white, size: 18),
                            SizedBox(width: 8),
                            Text(
                              "22h 55m 20s remaining",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text("View all"),
                        icon: Icon(Icons.arrow_back),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .transparent, // Makes the button body transparent
                          shadowColor: Colors
                              .transparent, // Removes the elevation shadow
                          elevation: 0,
                          foregroundColor: Colors.white,
                          side: const BorderSide(
                            color: Colors.white, // Border color
                            width: 2, // Border width
                          ),
                          // 4. (Optional) Customize shape
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Cardcategory(
                      imgurl: "assets/images/product_1.jpg",
                      title: "Women Printed Kurta",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹1500",
                      price: "₹2499",
                      discount: "70%Off",
                      rating: "2340",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Cardcategory(
                      imgurl: "assets/images/product_2.jpg",
                      title: "Mens Sports Shoes",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹6600",
                      price: "₹9999",
                      discount: "40%Off",
                      rating: "6810",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Cardcategory(
                      imgurl: "assets/images/product_3.jpg",
                      title: "Mens Luxuery Watch",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹1500",
                      price: "₹2499",
                      discount: "20%Off",
                      rating: "5890",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Cardcategory(
                      imgurl: "assets/images/product_4.jpg",
                      title: "Women Printed Kurta",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹1500",
                      price: "₹2499",
                      discount: "40%Off",
                      rating: "56890",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(15),
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/images/offer.png')],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Special Offers",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "We make sure you get the offer you need at best prices",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/mac.png'),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50-40% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Now in (product)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          'All Colors',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Shop Now ",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2.0, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
