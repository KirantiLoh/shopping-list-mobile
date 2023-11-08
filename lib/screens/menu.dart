import 'package:flutter/material.dart';
import 'package:shopping_list_mobile/types/type.dart';
import 'package:shopping_list_mobile/widgets/left_drawer.dart';
import 'package:shopping_list_mobile/widgets/shop_card.dart';

final List<ShopItem> items = [
  ShopItem("Lihat Produk", Icons.checklist),
  ShopItem("Tambah Produk", Icons.add_shopping_cart),
  ShopItem("Logout", Icons.logout),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      endDrawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                  child: Text(
                    'PBP Shop', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Grid layout
                GridView.count(
                  // Container pada card kita.
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                  }).toList(),
                ),
              ],
            )),
      ),
    );
  }
}
