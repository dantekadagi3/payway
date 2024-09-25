import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  static var route1 = '/page1';

  const PageOne({super.key});

  @override
  State<PageOne> createState() => PageOneState();
}

class PageOneState extends State<PageOne> {
  static const route1 = '/page1';
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
                  'assets/images/pic1.jpeg',
                  height: 200,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Discover",
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
            Navigator.of(context).pushNamed('/page2');
          },
          child: const Text("Next"),
        ),
      ],
    ),
  );
}
