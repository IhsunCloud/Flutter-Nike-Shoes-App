import 'package:flutter/material.dart';
import 'package:nike_shoes_app/src/kernel/constants/colors.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: Container(
            width: 300.0,
            decoration: BoxDecoration(
              color: ColorPalette.lakeLucerne.withOpacity(.2),
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 50.0,
          right: 40.0,
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
          right: 40.0,
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
          right: 40.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffCD2626),
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
          left: -50.0,
          top: 10.0,
          child: Image.asset(
            'assets/images/RedShoe.png',
            height: 240.0,
            width: 220.0,
          ),
        ),
      ],
    );
  }
}
