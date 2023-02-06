import 'dart:math';

class ShopItem {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  // final int quantity;

  ShopItem({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    // required this.quantity,
  });

  // a randomly generated quantity of items, about a maximum of 15
  int get quantity => Random().nextInt(15);
}
