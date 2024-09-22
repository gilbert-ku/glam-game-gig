// lib/models/order.dart

class Order {
  final String id;
  final String userId;
  final List<String> productIds;
  final double totalAmount;
  final DateTime orderDate;

  Order({
    required this.id,
    required this.userId,
    required this.productIds,
    required this.totalAmount,
    required this.orderDate,
  });

  // Factory method to create an Order from a map (e.g., from JSON)
  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      userId: map['userId'],
      productIds: List<String>.from(map['productIds']),
      totalAmount: map['totalAmount'],
      orderDate: DateTime.parse(map['orderDate']),
    );
  }

  // Method to convert Order to a map (e.g., for JSON encoding)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'productIds': productIds,
      'totalAmount': totalAmount,
      'orderDate': orderDate.toIso8601String(),
    };
  }
}
