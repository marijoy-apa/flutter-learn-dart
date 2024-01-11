import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Product {
  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isFavorites,
    String? id,
  }) : id = id ?? uuid.v4();

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isFavorites;
  final String id;
}
