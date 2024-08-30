import 'package:flutter/material.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0, vertical: 20.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 50.0,
          right: 60.0,
          child: Text(
            '۳۰ % تخفیف',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'Lalezar',
              fontSize: 28.0,
              letterSpacing: .5,
            ),
          ),
        ),
        const Positioned(
          top: 100.0,
          right: 60.0,
          child: Text(
            'برای اولین خرید',
            style: TextStyle(
              fontFamily: 'Estedad-Medium',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              letterSpacing: .5,
            ),
          ),
        ),
        Positioned(
          top: 150.0,
          right: 60.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF000000),
                foregroundColor: const Color(0xFFFFFFFF)),
            child: const Text(
              'مشاهده جزئیات',
              style: TextStyle(
                fontFamily: 'Estedad-Medium',
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          left: -80.0,
          top: 0.0,
          child: Image.asset(
            'assets/images/RedShoe.png',
            height: 260.0,
            width: 250.0,
          ),
        ),
      ],
    );
  }
}
