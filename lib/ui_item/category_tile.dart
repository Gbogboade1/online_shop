import 'package:flutter/material.dart';
import 'package:online_hop/model/category_model.dart';
import 'package:online_hop/pages/general_ui_item.dart';

class CategoryTile extends StatelessWidget {
  final CategoryModel category;

  const CategoryTile({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                category.imageUrl,
              ),
            ),
          ),
          Text(
            category.title,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
          ),
          verticalSpace(),
        ],
      ),
    );
  }
}
