import 'package:flutter/material.dart';
import 'package:payway/main.dart';

class SearchedPage extends StatefulWidget {
  const SearchedPage({super.key});

  @override
  State<SearchedPage> createState() => _SearchedPageState();
}

class _SearchedPageState extends State<SearchedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _imageSection(context),
                const SizedBox(
                  height: 20,
                ),
                _headingText(),
                const SizedBox(
                  height: 20,
                ),
                _textArea(),
                 const SizedBox(
                  height: 20,
                ),
                _bottomButton()
                //_bottomPics()
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _imageSection(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width; // Get screen width
  final screenHeight = MediaQuery.of(context).size.height; // Get screen height

  return Container(
    height: screenHeight * 0.4, 
    width: screenWidth, 
    color: Colors.transparent,
    child: Image.asset(
      'assets/images/santorini.jpeg',
      fit: BoxFit.cover, 
    ),
  );
}


Widget _headingText() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Santorini 101",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.thumbs_up_down_outlined),
              focusColor: mainColor,
            )
          ],
        )
      ],
    ),
  );
}

// Widget _bottomPics() {

//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset('assets/images/italy.jpeg',
//       height: 120,
//       width: 100),
//       ],
//   );
// }

Widget _textArea() {
  return const Padding(
    padding: EdgeInsets.all(20),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Text(
            "About Santorini",
            style: TextStyle(
              fontSize: 24, // Adjust the font size for the heading
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Adjust spacing between the texts
          Text(
            "Santorini is one of the most famous islands in the world, "
            "known for its stunning sunsets, white-washed houses with blue domes, "
            "and crystal-clear waters. Located in the Aegean Sea, this volcanic island "
            "offers breathtaking views, beautiful beaches, and unique archaeological sites. "
            "Visitors can explore charming villages, sample delicious Mediterranean cuisine, "
            "and immerse themselves in the island's rich history and culture. Whether you're "
            "seeking adventure or relaxation, Santorini is a paradise for travelers.",
            style: TextStyle(
              fontSize: 16, // Set the font size for the paragraph
              color: Colors.black54, // Adjust the color as needed
              height: 1.5, // Line height for better readability
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _bottomButton() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: mainColor,
        padding:  const EdgeInsets.all(15)
      ),
      onPressed: () {}, child: const Text("Learn more")
    ),
  );
}
