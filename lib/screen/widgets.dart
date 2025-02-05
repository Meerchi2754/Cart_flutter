import 'package:cart/item_model.dart';
import 'package:flutter/material.dart';
import 'package:cart/constants.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key,required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration:  BoxDecoration(
          color: item.color, // Make sure blue1 is defined in constants.dart
          borderRadius:
              BorderRadius.all(Radius.circular(8)), // Optional rounded corners
        ),
      ),
      title: Text(
        item.name,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle:  Text(
        "Made in USA\n${item.price} \$",
        style: TextStyle(color: Colors.black),
      ),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: blue1,
          foregroundColor: Colors.white, // White text in button
        ),
        onPressed: () {
          // Add action here
        },
        child: const Text("Add"),
      ),
    );
  }
}
