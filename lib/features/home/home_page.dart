import 'package:flutter/material.dart';
import '../../widget/product_card.dart';
import '../profile/profile_page.dart';
import '../transaction/transaction_page.dart';
import '../notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool isSearching = false;

  final List<Widget> _pages = [
    GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 0.68,
      children: const [
        ProductCard(title: " Sepatu Nike", price: "Rp. 100.000", image: "https://cdn.antaranews.com/cache/1200x800/2021/03/28/Exbfpl2WgAAQkl8.jpg",),
        ProductCard(title: "Sepatu Adidas", price: "Rp 300.000", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8fp_uB8-Jx-C-jggRfRp6Aq2k5oiHXEKR_A&s",),

        ProductCard(title: "Jaket Hoodie", price: "Rp 250.000", image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRr9CI5a_sWdLAcfrYhgSW0r6VtTpPu9uObREhQAkG6EQdG6eUH",),
      ],
    ),
    const TransactionPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Cari Produk...",
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),

      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifikasi",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Saya"),
        ],
      ),
    );
  }
}
