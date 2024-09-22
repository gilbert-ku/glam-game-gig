// lib/main.dart

import 'package:flutter/material.dart';
import 'package:glamgem/screens/cart_screen.dart';
import 'package:glamgem/screens/home_screen.dart';


void main() {
  runApp(GlamGemApp());
}

class GlamGemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlamGem',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.amber), // Replace Colors.gold with Colors.amber
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          // headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          // bodyText2: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Ensure HomeScreen is implemented
        '/cart': (context) => CartScreen(),

      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => HomeScreen(), // Redirect to HomeScreen or an ErrorScreen
      ),
    );
  }
}
