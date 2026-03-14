import 'package:flutter/material.dart';
import '../../widget/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ProductCard(title: " Sepatu Nike", price: "Rp. 100.000"),
        ProductCard(title: "Tas Adidas", price: "Rp 300.000"),

        ProductCard(title: "Jaket Hoodie", price: "Rp 250.000"),
      ],
    ),
    const Center(child: Text("Home Page")),
    const Center(child: Text("Search Page")),
    const Center(child: Text("Profil Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("E-Commerce Mini")),

      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
