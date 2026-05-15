import 'package:assignment_9/screens/homeScreens.dart';
import 'package:flutter/material.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<Productscreen> {
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${pageNumber + 1}/3",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        pageNumber = 2;
                      });
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              const Spacer(), 
              if (pageNumber == 0) ...[
                Image.asset('assets/images/fashion shop-rafiki 1.png', height: 250),
                const SizedBox(height: 30),
                const Text(
                  "Choose Products",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
                  textAlign: TextAlign.center,
                ),
              ] else if (pageNumber == 1) ...[
                Image.asset(
                  'assets/images/Shopping bag-rafiki 1.png',
                  height: 250,
                ), 
                const SizedBox(height: 30),
                const Text(
                  "Make Payment",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Sunt aliqua dolor do amet sint. Velit officia consequat duis enim velit.",
                  textAlign: TextAlign.center,
                ),
              ] else ...[
                Image.asset(
                  'assets/images/Sales consulting-pana 1.png',
                  height: 250,
                ), 
                const SizedBox(height: 30),
                const Text(
                  "Get Your Order",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Velit officia consequat duis enim velit mollit non deserunt ullamco.",
                  textAlign: TextAlign.center,
                ),
              ],

              const Spacer(), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: pageNumber == 0
                            ? 24
                            : 8, // Agar active hai toh lamba hoga
                        decoration: BoxDecoration(
                          color: pageNumber == 0 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 5),
                      // Doosra Dot
                      Container(
                        height: 8,
                        width: pageNumber == 1 ? 24 : 8,
                        decoration: BoxDecoration(
                          color: pageNumber == 1 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 5),
                      // Teesra Dot
                      Container(
                        height: 8,
                        width: pageNumber == 2 ? 24 : 8,
                        decoration: BoxDecoration(
                          color: pageNumber == 2 ? Colors.black : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),

                  // NEXT / GET STARTED BUTTON
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (pageNumber < 2) {
                          // Agar abhi teesra page nahi aaya, toh agle page par jao
                          pageNumber = pageNumber + 1;
                        } else {
                          // 👇 AGAR TEESRA PAGE HAI, TOH HOMEPAGE PAR JAO
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Homescreens(), // Homepage khul jayegi
                            ),
                          );
                        }
                      });
                    },
                    child: Text(
                      pageNumber == 2 ? "Get Started" : "Next",
                      style: const TextStyle(
                        color: Color(0xffF83758),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
