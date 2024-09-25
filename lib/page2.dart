import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => PageTwoState();
}

class PageTwoState extends State<PageTwo> {
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
                  'assets/images/pic2.jpeg',
                  height: 200,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Learn",
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
            Navigator.of(context).pushNamed('/page3');
          },
          child: const Text("Next"),
        ),
      ],
    ),
  );
}
