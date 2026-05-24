import 'package:assignment_9/screens/SearchScreen.dart';
import 'package:assignment_9/screens/cartScreen.dart';
import 'package:assignment_9/screens/homeScreens.dart';
import 'package:assignment_9/screens/settingScreen.dart';
import 'package:assignment_9/screens/trendingProducts.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int activeTab = 0;
  List<int> tabHistory = [0];

  Map<String, String> selectedProductData = {};

  // ⚡ 2. Function jo data set karega aur tab switch karega
  void openProductInCart(Map<String, String> data) {
    setState(() {
      selectedProductData = data;
      activeTab = 2; // Cart Tab par le jao
      if (tabHistory.isEmpty || tabHistory.last != 2) {
        tabHistory.add(2);
      }
    });
  }

  // List<Widget> screens = [
  //   Homescreens(),
  //   Trendingproducts(onProductSelect: openProductInCart),
  //   Cartscreen(onProductSelect: openProductInCart),
  //   const Center(child: Text("Search Screen")),
  //   const Center(child: Text("Settings Screen")),
  // ];

  void changeTab(index) {
    setState(() {
      activeTab = index;
      if (tabHistory.isEmpty || tabHistory.last != index) {
        tabHistory.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const Homescreens(),
      Trendingproducts(onProductSelect: openProductInCart),
      Cartscreen(productData: selectedProductData),
      SearchScreen(),
      SettingsScreen(),
    ];
    return PopScope(
      canPop: tabHistory.length <= 1,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        setState(() {
          tabHistory.removeLast();
          activeTab = tabHistory.last;
        });
      },
      child: Scaffold(
        body: screens[activeTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeTab,
          onTap: (index) {
            changeTab(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'WishList',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
