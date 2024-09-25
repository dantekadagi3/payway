import 'package:flutter/material.dart';
import 'package:payway/main.dart';
//import 'package:payway/create_account.dart';
//import 'package:payway/login_page.dart';
//import 'package:payway/main.dart';
//import 'package:payway/search_screen.dart';
//import 'package:payway/searched_page.dart'; // Assuming this contains `mainColor`
import 'package:payway/page1.dart';
//import 'package:payway/page2.dart';
//import 'package:payway/page3.dart'; // Assuming this contains `PageOne`

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) =>  const PageOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, // Assuming `mainColor` is a variable in main.dart
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: logo(),
          ),
          const SizedBox(height: 20), // Space between logo and loader
          const Align(
            alignment: Alignment.bottomCenter,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

Widget logo() {
  return Container(
    height: 80,
    width: 90,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Text(
        "P",
        style: TextStyle(
          color: mainColor, // Assuming `mainColor` is defined in `main.dart`
          fontSize: 60,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
