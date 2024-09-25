import 'package:flutter/material.dart';
import 'package:payway/main.dart';
import 'package:payway/searched_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TextEditingController to capture search input
  final TextEditingController _searchController = TextEditingController();

  // List of image cards (all items)
  final List<Map<String, String>> _allCards = [
    {'imageUrl': 'assets/images/italy.jpeg', 'title': 'Italy'},
    {'imageUrl': 'assets/images/santorini.jpeg', 'title': 'Santorini'},
    {'imageUrl': 'assets/images/swiss.jpeg', 'title': 'Switzerland'},
  ];

  // List of filtered cards (to be displayed)
  List<Map<String, String>> _filteredCards = [];

  @override
  void initState() {
    super.initState();
    // Initially show all cards
    _filteredCards = _allCards;

    // Listen for changes in the search bar
    _searchController.addListener(() {
      filterSearchResults(_searchController.text);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _searchController.dispose();
    super.dispose();
  }

  // Function to filter the cards based on search input
  void filterSearchResults(String query) {
    if (query.isEmpty) {
      // Show all cards if search bar is empty
      setState(() {
        _filteredCards = _allCards;
      });
    } else {
      // Filter cards based on the query
      setState(() {
        _filteredCards = _allCards
            .where((card) =>
                card['title']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          style: IconButton.styleFrom(
              foregroundColor: Colors.white, hoverColor: Colors.black),
        ),
        title: const Center(
          child: Text(
            "Find place",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _searchBar(_searchController),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredCards.length,
                itemBuilder: (context, index) {
                  return ImageCard(
                    imageUrl: _filteredCards[index]['imageUrl']!,
                    title: _filteredCards[index]['title']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Search bar widget that uses the search controller
Widget _searchBar(TextEditingController searchController) {
  return TextField(
    controller: searchController,
    decoration: InputDecoration(
      prefixIcon: const Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.green),
      ),
      hintText: "Search place",
      hintStyle: const TextStyle(color: Colors.grey),
      fillColor: null,
      filled: false,
    ),
  );
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
          MaterialPageRoute(builder: (context) =>  const SearchedPage()),
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
          style: const TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
