import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Clothing'),
            onTap: () {
              // Navigate to clothing catalog
            },
          ),
          ListTile(
            title: Text('Jewelry'),
            onTap: () {
              // Navigate to jewelry catalog
            },
          ),
          ListTile(
            title: Text('Accessories'),
            onTap: () {
              // Navigate to accessories catalog
            },
          ),
        ],
      ),
    );
  }
}
