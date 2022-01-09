import 'package:flutter/material.dart';

class ProductModel {
  final String imageUrl;
  final String title;
  final String address;
  final String uploadDate;
  final String price;
  final String contactChat;
  final String contactPhone;

  ProductModel({
    @required this.imageUrl,
    @required this.title,
    @required this.address,
    @required this.uploadDate,
    @required this.price,
    this.contactChat,
    this.contactPhone,
  });
}
