import 'package:flutter/material.dart';
import 'package:mindlink/SCREENS/homepage.dart';

void main() {
  runApp(const MyApp());
}

// Main Application Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MINDLINK APP', // Added a title for better app metadata
      theme: ThemeData(
       // brightness: Brightness.dark, // Set brightness to dark
       // primaryColor: Colors.black, // Set primary color to black
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, 
          centerTitle: true// Set AppBar background color
        ),
      ),
      home: const HomePage(), // Initialize the HomePage here
    );
  }
}
