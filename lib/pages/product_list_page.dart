import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:online_hop/model/product_model.dart';
import 'package:online_hop/pages/general_ui_item.dart';
import 'package:online_hop/ui_item/product_tile.dart';

class ProductsListPage extends StatefulWidget {
  @override
  _ProductsListPageState createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: buildList(),
            ),
            Positioned(
              child: buildAppBar(),
              top: 0,
              left: 0,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          buildFilterSection(),
          verticalSpace(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Found 123456 ads in Nigeria",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          Wrap(
            children: List.generate(
              25,
              (index) => ProductTile(
                product: ProductModel(
                    imageUrl: "assets/img2.jpg",
                    title: "Android Phone",
                    address: "Akure",
                    uploadDate: "May 10",
                    price: "45,000"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFilterSection() {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        buildFilterButtom(),
        buildFilterButtom(),
        buildFilterButtom(),
        buildFilterButtom(),
      ],
    );
  }

  Widget buildFilterButtom() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: .5)),
      width: MediaQuery.of(context).size.width * .4,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              "Region",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            )),
            horizontalSpace(),
            Transform.rotate(
                angle: math.pi * .5,
                child: Icon(
                  Icons.play_arrow,
                  size: 12,
                )),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      color: Colors.green,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0,
          child: TextField(
            decoration: InputDecoration(
              // hintStyle: TextStyle(fontSize: 14),
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "Type your search here",
              prefixIcon: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  // size: 16,
                  color: Colors.green,
                ),
              ),
              suffixIcon: Icon(
                Icons.settings_input_component,
                color: Colors.green,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
