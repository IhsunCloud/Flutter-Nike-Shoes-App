import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nike_shoes_app/src/kernel/constants/colors.dart';

class ProductItem extends StatelessWidget {
  final String id, title, price, imageUrl;

  const ProductItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: ColorPalette.lakeLucerne.withOpacity(.2),
        borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: id,
            child: Image.asset(
              imageUrl,
              height: 130.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.vazirmatn(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            price,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.vazirmatn(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
