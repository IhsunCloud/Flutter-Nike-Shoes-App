import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_shoes_app/src/models/shoe.dart';

class ShoeNotifier extends StateNotifier<List<Shoe>> {
  ShoeNotifier() : super([]);

  void toggleLike(int shoeId) {
    state = state.map((shoe) {
      if (shoe.id == shoeId) {
        return shoe.copyWith(isLiked: !shoe.isLiked);
      }
      return shoe;
    }).toList();
  }

  final shoeProvider = StateNotifierProvider<ShoeNotifier, List<Shoe>>((ref) {
    return ShoeNotifier();
  });
}
