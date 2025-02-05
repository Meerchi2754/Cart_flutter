import 'package:cart/item_model.dart';
import 'package:cart/screen/item_list.dart';
import 'package:cart/screen/widgets.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart",style: TextStyle(color: Colors.white)),
        
        centerTitle: true,
        backgroundColor: primaryColor),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context,index)=>ItemWidget(item:Item(name: "Maggie", price: 12, color: blue1)),),
          ),
            SizedBox(height: 20,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: blue1),onPressed: () {}, child: Text("Add",style: TextStyle(color: Colors.white))),
              const SizedBox(
              height: 20,
              )
        ],
      )
    );
  }
}
