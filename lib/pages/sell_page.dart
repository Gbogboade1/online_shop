import 'package:flutter/material.dart';
import 'package:online_hop/pages/general_ui_item.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white.withOpacity(.7),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.green),
          titleSpacing: -1,
          title: Text(
            "Post New Ad",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                ),
                child: Center(
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: buildInputFieldsCard(),
            ),
            verticalSpace(),
            Center(
              child: RaisedButton(
                color: Colors.green,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Text(
                    "Post Ad",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(height: 32),
          ],
        ));
  }

  Widget buildInputFieldsCard() {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.list, color: Colors.green),
                horizontalSpace(),
                Text(
                  "New Advert",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .7,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                buildInputField("Category"),
                verticalSpace(height: 16),
                buildInputField("Title"),
                verticalSpace(height: 16),
                buildInputField("Region"),
                verticalSpace(height: 16),
                buildInputField("Description"),
                verticalSpace(height: 16),
                buildInputField("Name"),
                verticalSpace(height: 16),
                buildInputField("Phone number (digits only)"),
                // buildInputField("Name"),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInputField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hint,
        hintText: hint,
      ),
    );
  }
}
