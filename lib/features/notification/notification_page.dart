import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.notifications, color: Colors.blueAccent),
          title: Text("Pesanan Berhasil"),
          subtitle: Text("Sepatu Nike berhasil dibeli"),
        ),

        Divider(),

        ListTile(
          leading: Icon(Icons.local_offer, color: Colors.orange),
          title: Text("Promo Baru"),
          subtitle: Text("Diskon 50% hari ini!, Jangan sampai terlewat"),
        ),

        Divider(),

        ListTile(
          leading: Icon(Icons.payment, color: Colors.green),
          title: Text("Pembayaran Berhasil"),
          subtitle: Text("Transaksi Rp. 100.000,00 sukses"),
        ),

        Divider(),

        
      ],
    );
  }
}