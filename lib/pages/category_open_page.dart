import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:online_hop/pages/general_ui_item.dart';
import 'package:online_hop/pages/product_list_page.dart';

class CategoryOpenPage extends StatefulWidget {
  @override
  _CategoryOpenPageState createState() => _CategoryOpenPageState();
}

class _CategoryOpenPageState extends State<CategoryOpenPage> {
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
    return ListView(
      children: List.generate(
        10,
        (index) => InkWell(
          onTap: (){
            pushRoute(context, ProductsListPage());
          },
                  child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
              horizontalSpace(),
                  Image.asset(
                    "assets/icon5.png",
                    width: 64,
                    height: 60,
                  ),
                  horizontalSpace(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Cars",
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                        ),
                        verticalSpace(),
                        Text("1234 ads",
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: Colors.grey),)
                      ],
                    ),
                  ),
                  horizontalSpace(),
                  Icon(CupertinoIcons.forward, color: Colors.grey),
                  horizontalSpace()
                ],
              ),
              verticalSpace(height: 16)
            ],
          ),
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
