import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          // List of items in cart
          Expanded(child: ListView.builder(
            itemCount: 10, // Number of items in cart
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('Product Name'),
                subtitle: Text('\$Price'),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    // Remove item from cart
                  },
                ),
              );
            },
          )),
          // Cart summary
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Subtotal: \$XXX'),
                Text('Estimated Tax: \$XXX'),
                Text('Shipping: \$XXX'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Proceed to checkout
                  },
                  child: Text('Proceed to Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
