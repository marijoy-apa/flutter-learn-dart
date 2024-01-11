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

   String name;
   String description;
   int price;
   String image;
   bool isFavorites;
   String id;
}
