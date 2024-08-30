import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1800.0,
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
            'assets/images/YellowShoe.png',
            height: 130,
            fit: BoxFit.fitHeight,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14.0, right: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(IconlyLight.arrow_right_2),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 10.0, left: 14.0, right: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Air Max 97'),
                      Text('\$20.99'),
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
