import 'package:flutter/material.dart';
import 'package:nike_shoes_app/src/models/shoe.dart';

class ProductDetail extends StatelessWidget {
  final Shoe product;
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(product.imageUrl),
    );
  }
}
