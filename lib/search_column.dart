import 'package:flutter/material.dart';

class ImageCardList extends StatelessWidget {
  const ImageCardList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          ImageCard(
            imageUrl: 'assets/images/italy.jpeg',
            title: 'Italy',
          ),
          ImageCard(
            imageUrl: 'assets/images/santorini.jpeg',
            title: 'Santorini',
          ),
          ImageCard(
            imageUrl: 'assets/images/swiss.jpeg',
            title: 'Switzerland',
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  ImageCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to another page when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(title: title)),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 200.0,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.black54,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          'Details about $title',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
