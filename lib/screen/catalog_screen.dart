import 'package:cart/screen/cart_screen.dart';
import 'package:cart/screen/item_list.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screen/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          "Menu",
          style: TextStyle(color: Colors.white), // White text for AppBar title
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
            child: const Icon(Icons.shopping_cart,
                color: Colors.white), // White icon color
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        itemCount: catalog.length, // Added itemCount to avoid infinite list
        itemBuilder: (context, index) => ItemWidget(item: catalog[index],),
      ),
    );
  }
}
