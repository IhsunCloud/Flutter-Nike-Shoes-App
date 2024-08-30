import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProductItem extends StatelessWidget {
  final String title, price, imageUrl;

  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1800.0,
      width: 500.0,
      margin: const EdgeInsets.all(14.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 130,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(IconlyLight.arrow_right_2),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10.0, left: 14.0, right: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(title),
                      Text(price),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
