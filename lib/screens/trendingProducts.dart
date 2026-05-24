import 'package:assignment_9/screens/cartScreen.dart';
import 'package:assignment_9/screens/loginScreen.dart';
import 'package:assignment_9/widget/productCart.dart';
import 'package:flutter/material.dart';

class Trendingproducts extends StatefulWidget {
  const Trendingproducts({super.key, required this.onProductSelect});

  final Function(Map<String, String>) onProductSelect;
  @override
  State<Trendingproducts> createState() => _TrendingproductsState();
}

class _TrendingproductsState extends State<Trendingproducts> {
  @override
  final List<Map<String, String>> myProducts = [
    {
      "img": "assets/images/product_1.jpg",
      "title": "Women Kurta",
      "desc": "Neque porro quisquam est qui dolorem ",
      "fPrice": "₹1500",
      "rating": "2340",
    },
    {
      "img": "assets/images/product_2.jpg",
      "title": "Men Casual Shirt",
      "desc": "Lorem ipsum dolor sit amet consectetur elit",
      "fPrice": "₹1200",
      "rating": "1120",
    },
    {
      "img": "assets/images/product_3.jpg",
      "title": "Men Luxery Watch",
      "desc": "Sed ut perspiciatis unde omnis iste ",
      "fPrice": "₹3500",
      "rating": "450",
    },
    {
      "img": "assets/images/product_4.jpg",
      "title": "Stylish Jeans",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_5.png",
      "title": "men’s & boys s...",
      "desc": "George Walker Derby Brown Formal Shoes",
      "fPrice": "₹999",
      "rating": "980",
    },
    {
      "img": "assets/images/product_6.png",
      "title": "Black Jacket 12...",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_7.png",
      "title": "Black Winter...",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_8.png",
      "title": "Stylish Jeans",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_9.png",
      "title": "Stylish Jeans",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_10.png",
      "title": "Flare Dress",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_11.png",
      "title": "Pink Embroide...",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_12.png",
      "title": "Black Dress",
      "desc": "Solid Black Dress for Women, Sexy Chain Shorts Ladi...",
      "fPrice": "₹2,000",
      "rating": "980",
    },
    {
      "img": "assets/images/product_13.png",
      "title": "Mens Starry",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
    {
      "img": "assets/images/product_6.png",
      "title": "Black Dress",
      "desc": "At vero eos et accusamus et iusto odio dignissimos",
      "fPrice": "₹1800",
      "rating": "980",
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "52,082+ Iteams ",
                      style: TextStyle(
                        fontSize: 23,
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
                            padding: EdgeInsets.symmetric(horizontal: 10),
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

          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: myProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.60,
                ),
                itemBuilder: (context, index) {
                  final product = myProducts[index];
                  return InkWell(
                    onTap: () {
                      widget.onProductSelect(product);
                    },
                    child: Cardcategory(
                      imgurl: product["img"]!,
                      title: product["title"]!,
                      description: product["desc"]!,
                      finalPrice: product["fPrice"]!,
                      rating: product["rating"]!,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
