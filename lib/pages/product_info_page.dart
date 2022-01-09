import 'package:flutter/material.dart';
import 'package:online_hop/model/product_model.dart';
import 'package:online_hop/pages/general_ui_item.dart';
import 'package:online_hop/ui_item/stepper.dart';

class ProductInfoPage extends StatefulWidget {
  final ProductModel product;

  const ProductInfoPage({Key key, @required this.product}) : super(key: key);
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  List<ItemProperty> propertiesList = [
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Make", "Honda"),
    ItemProperty("Model", "2014"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
    ItemProperty("Conditioned", "Nigerian Used"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
        titleSpacing: -1,
        title: Text(
          "Casseories",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          Icon(Icons.share),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Icon(Icons.star_border),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          buildImageBar(),
          verticalSpace(),
          buildContact(),
          // verticalSpace(),
          buildProductPrroperties(),
          buildProductDescription(),
          buildDeliveryDetails(),
          buildRequestButton(),
          buildSellerCard()
        ],
      ),
    );
  }

  Widget buildRequestButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.message,
                color: Colors.green,
              ),
              horizontalSpace(width: 4),
              Expanded(
                child: Text(
                  "Request seller to call back", //.toUpperCase(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageBar() {
    return Stack(
      children: <Widget>[
        ImagesStepper(),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Wrap(
              children: <Widget>[
                Container(
                    height: .5, width: double.infinity, color: Colors.white),
                verticalSpace(),
                Text(
                  widget.product.title,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 12,
                    ),
                    Text(
                      widget.product.address,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "# " + widget.product.price,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }

  Widget buildContact() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // direction: Axis.horizontal,
        children: <Widget>[
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      color: Colors.green,
                    ),
                    horizontalSpace(width: 4),
                    Expanded(
                      child: Text(
                        "Make an offer".toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          horizontalSpace(),
          Flexible(
            child: Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.call, color: Colors.white),
                    horizontalSpace(width: 4),
                    Text(
                      "call".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductPrroperties() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
        child: Column(
          // direction: Axis.vertical,
          children: List.generate(
            propertiesList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      propertiesList[index].key +
                          "_________________________________________________________",
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        // color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    propertiesList[index].value,
                    style: TextStyle(
                      // color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProductDescription() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 16,
          right: 8,
          left: 8,
        ),
        child: Text(
          "tydfhjg uipbj jklmbjlxsljlcgsabucjbscjg "
          "sucg uis cgisuc gasch aschs gcagcasuicgasuicg "
          "asui gcuisag cjiasc asca sc",
          style: TextStyle(
            // color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  Widget buildDeliveryDetails() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 16,
          right: 8,
          left: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Delivery",
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Delivery Fee: _________________________________________________",
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      // color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Text(
                  "N3,000",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Deolivery Fee: ",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "...........................................",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "N3,000",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Deolivery Fee: ",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "...........................................",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "N3,000",
                  style: TextStyle(
                    // color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSellerCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/img3.jpg",
                        ))),
              ),
              verticalSpace(),
              Text(
                "See all ads",
                style: TextStyle(color: Colors.green, fontSize: 15),
              )
            ],
          ),
          horizontalSpace(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Nameu;j yhi ;nioh;nbnkjbnjk"),
                buildIconTextWidget(
                    Icons.person_outline, "Registered: 29 days"),
                buildIconTextWidget(
                    Icons.access_time, "Last seen: 2hrs ago"),
                buildIconTextWidget(
                    Icons.view_agenda, "25 views"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemProperty {
  final String key;
  final String value;

  ItemProperty(this.key, this.value);
}

Widget buildIconTextWidget(IconData icon, String text) {
  return Row(
    children: <Widget>[Icon(icon), horizontalSpace(), Text(text)],
  );
}
