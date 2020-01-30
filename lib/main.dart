import 'package:flutter/material.dart';
import 'package:splash_screen/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellowAccent,
      ),
      home: SplashScreen(),
    ),
  );
}