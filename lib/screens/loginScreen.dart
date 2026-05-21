import 'package:assignment_9/screens/forgetScreen.dart';
import 'package:assignment_9/screens/signupScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                'Welcome\nBack!',
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
        
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (context) => Forgetscreen()),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xffF83758),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF83758),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Login",
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
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffFFF5F6),
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
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffFFF5F6),
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
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF83758),
                      width: 1.5,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffFFF5F6),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Create An Account ",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const Signupscreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffF83758),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
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
