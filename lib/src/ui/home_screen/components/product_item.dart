import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ProductItem extends StatelessWidget {
  final String title, price, imageUrl;

  const ProductItem({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 300.0,
      margin: const EdgeInsets.only(bottom: 10.0, right: 6.0, left: 6.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 140,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.vazirmatn(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 8.0),
                const SizedBox(height: 8.0),
                Text(
                  price,
                  style: GoogleFonts.vazirmatn(),
                ),
                const SizedBox(height: 2.0)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
