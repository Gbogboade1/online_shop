import 'package:flutter/material.dart';
import 'package:online_hop/model/product_model.dart';
import 'package:online_hop/ui_item/product_tile.dart';

class MyAdvertsPage extends StatefulWidget {
  @override
  _MyAdvertsPageState createState() => _MyAdvertsPageState();
}

class _MyAdvertsPageState extends State<MyAdvertsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleSpacing: -8,
        // centerTitle: true,
        title: Text(
          "My Adverts",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: ListView(
        children: List.generate(
            25,
            (index) => ProductTile(
                  product: ProductModel(
                      imageUrl: "assets/img4.jpg",
                      title: "Lenovo Laptop",
                      address: "Kwara, Ikorodu Lagos",
                      uploadDate: "Mr. 23",
                      price: "450,000"),
                )),
      ),
    );
  }
}
