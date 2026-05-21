import 'package:assignment_9/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Create an\naccount',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username or Email",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xFFA8A8A9),
                  hintText: "ConfirmPassword",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "By clicking the Register button, you agree to the public offer",
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xffF83758,
                  ), // Pink background color
                  foregroundColor: Colors
                      .white, // Text (aur icon) ka color white karne ke liye
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ), // Button ko poori width dene ke liye (Height: 50)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Corners ko thoda round karne ke liye
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(child: Text("- OR Continue with -")),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    2,
                  ), // Border aur Circle ke beech ka gap
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ), // Pink Border
                  ),
                  child: const CircleAvatar(
                    radius: 30, // Icon ka size bada karne ke liye
                    backgroundColor: Color(
                      0xffFFF5F6,
                    ), // Halka pink/white background
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage('assets/images/google 1.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(
                    2,
                  ), // Border aur Circle ke beech ka gap
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ), // Pink Border
                  ),
                  child: const CircleAvatar(
                    radius: 30, // Icon ka size bada karne ke liye
                    backgroundColor: Color(
                      0xffFFF5F6,
                    ), // Halka pink/white background
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage('assets/images/apple 1.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(
                    2,
                  ), // Border aur Circle ke beech ka gap
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ), // Pink Border
                  ),
                  child: const CircleAvatar(
                    radius: 30, // Icon ka size bada karne ke liye
                    backgroundColor: Color(
                      0xffFFF5F6,
                    ), // Halka pink/white background
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage(
                          'assets/images/facebook-app-symbol 1.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // horizontally center karne ke liye
              children: [
                const Text(
                  "Create An Account ",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) =>
                            const Loginscreen(), 
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffF83758), // Pink Color
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration
                          .underline, // Image ki tarah underline ke liye
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
