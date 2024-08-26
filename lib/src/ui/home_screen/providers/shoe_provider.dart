import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nike_shoes_app/src/models/shoe.dart';
import 'package:nike_shoes_app/src/ui/product_screen/notifiers/shoe_notifier.dart';

final shoeProvider = StateNotifierProvider<ShoeNotifier, List<Shoe>>((ref) {
  return ShoeNotifier()
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    ..state = [
      // ignore: prefer_const_constructors
      Shoe(
        id: 1,
        title: 'Sneaker',
        imageUrl: 'assets/images/toppng.png',
        price: '25.99',
      ),
      // ignore: prefer_const_constructors
      Shoe(
        id: 2,
        title: 'Running Shoe',
        imageUrl: 'assets/images/RedShoe.png',
        price: '25.99',
      ),
      // ignore: prefer_const_constructors
      Shoe(
        id: 3,
        title: 'Boot',
        imageUrl: 'assets/images/15947562_30161559_1000.png',
        price: '25.99',
      ),
      // ignore: prefer_const_constructors
      Shoe(
        id: 3,
        title: 'Boot',
        imageUrl: 'assets/images/YellowShoe.png',
        price: '25.99',
      ),
    ];
});
