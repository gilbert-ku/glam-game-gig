// // lib/models/product.dart

// class Product {
//   final String id;
//   final String name;
//   final String description;
//   final double price;
//   final String imageUrl;
//   final List<String> categories;

//   Product({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//     required this.categories,
//   });

//   // Factory method to create a Product from a map (e.g., from JSON)
//   factory Product.fromMap(Map<String, dynamic> map) {
//     return Product(
//       id: map['id'],
//       name: map['name'],
//       description: map['description'],
//       price: map['price'],
//       imageUrl: map['imageUrl'],
//       categories: List<String>.from(map['categories']),
//     );
//   }

//   // Method to convert Product to a map (e.g., for JSON encoding)
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'description': description,
//       'price': price,
//       'imageUrl': imageUrl,
//       'categories': categories,
//     };
//   }
// }
