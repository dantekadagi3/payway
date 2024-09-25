import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => PageThreeState();
}

class PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/pic3.jpeg',
                  height: 200,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Travel",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          // Align the bottomArea to the bottom of the screen
          Align(
            alignment: Alignment.bottomCenter,
            child: bottomArea(context),
          ),
        ],
      ),
    );
  }
}

Widget bottomArea(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Skip"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: const Text("Next"),
        ),
      ],
    ),
  );
}
