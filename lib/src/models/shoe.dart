// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Shoe extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final String price;
  final bool isLiked;

  const Shoe({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    this.isLiked = false,
  });

  Shoe copyWith({bool? isLiked}) {
    return Shoe(
      id: id,
      title: title,
      imageUrl: imageUrl,
      price: price,
      isLiked: isLiked ?? this.isLiked,
    );
  }

  @override
  List<Object?> get props => [id, title, imageUrl, price, isLiked];
}
