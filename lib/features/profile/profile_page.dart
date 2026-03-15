import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [

        Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https:://i.avatar.cc/150",
              ),
            ),

            const SizedBox(width: 16),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "J2 Prime",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),

                Text(
                  "rexusj2prime@gmail.com",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
            )
          ],
        ),

        const SizedBox(height: 20),

        const Divider(),

        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Edit Profil"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.lock),
          title: const Text("Ubah Password"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.receipt),
          title: const Text("Riwayat Transaksi"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Pengaturan"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Logout"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),


      ],
    );
  }
}
