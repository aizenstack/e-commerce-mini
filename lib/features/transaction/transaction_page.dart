import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        ListTile(
          leading: Image.network(
            "https://cdn.antaranews.com/cache/1200x800/2021/03/28/Exbfpl2WgAAQkl8.jpg",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: const Text("Sepatu Nike"),
          subtitle: const Text(
            "Rp. 100.000,00",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const Divider(),

        ListTile(
          leading: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8fp_uB8-Jx-C-jggRfRp6Aq2k5oiHXEKR_A&s",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: const Text("Sepatu Adidas"),
          subtitle: const Text(
            "Rp. 100.000,00",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ],
    );
  }
}