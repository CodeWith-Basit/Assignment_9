import 'package:assignment_9/screens/loginScreen.dart';
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
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Aliya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: const Text("aliya123@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xffF83758),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                color: Color(0xffF83758),
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: Color(0xffF83758),
              ),
              title: const Text(
                "My Profile",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.login_outlined,
                color: Color(0xffF83758),
              ),
              title: const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const Loginscreen(),
                  ),
                );
              },
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: Colors.grey, thickness: 0.5),
            ),

            ListTile(
              leading: const Icon(Icons.settings_outlined, color: Colors.grey),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
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
              backgroundImage: AssetImage('assets/images/person.jpg'),
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
                      padding: EdgeInsets.only(left: 15),
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
                              padding: EdgeInsets.symmetric(horizontal: 15),
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
                              padding: EdgeInsets.symmetric(horizontal: 15),
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

            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50-40% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
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
                        SizedBox(height: 5),
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
                        SizedBox(height: 5),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
                    child: Cardcategory(
                      imgurl: "assets/images/product_4.jpg",
                      title: "Women Printed Kurta",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹1500",
                      price: "₹2499",
                      discount: "40%Off",
                      rating: "5689",
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 15),
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
                            maxLines: 2,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/mac.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Flat and Heels',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Stand a chance to get rewarded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        SizedBox(height: 10),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back),
                            label: Text("Visit Now"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
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
                color: Color(0xFFFD6E87),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.all(10),
                    child: Cardcategory(
                      imgurl: "assets/images/product_4.jpg",
                      title: "Women Printed Kurta",
                      description:
                          "Neque porro quisquam est qui dolorem ipsum quia",
                      finalPrice: "₹1500",
                      price: "₹2499",
                      discount: "40%Off",
                      rating: "5689",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image 10.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
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
                          "New Arrivals ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm, color: Colors.black, size: 17),
                            SizedBox(width: 8),
                            Text(
                              "Summer’ 25 Collections",
                              style: TextStyle(
                                color: Colors.black,
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
                          backgroundColor:
                              Colors.pink, // Makes the button body transparent
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
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(15),
              height: 470,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 10),
                        child: Text(
                          "Sponserd",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/image 12.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              "up to 50% Off",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
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
