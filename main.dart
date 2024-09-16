import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import SplashScreen
import 'login_page.dart';   // Import LoginPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DealsDray',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Show SplashScreen first
      debugShowCheckedModeBanner: false,
    );
  }
}


