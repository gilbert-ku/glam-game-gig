import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          // Profile picture and details
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text('Sarah Johnson'),
          ),
          ListTile(
            title: Text('Edit Profile'),
            onTap: () {
              // Navigate to Edit Profile screen
            },
          ),
          ListTile(
            title: Text('My Orders'),
            onTap: () {
              // Navigate to Orders screen
            },
          ),
          ListTile(
            title: Text('My Wishlist'),
            onTap: () {
              // Navigate to Wishlist screen
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Navigate to Settings screen
            },
          ),
          ListTile(
            title: Text('Help & Support'),
            onTap: () {
              // Navigate to Help & Support screen
            },
          ),
        ],
      ),
    );
  }
}
