import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Portfolio',
    theme: ThemeData(
      inputDecorationTheme: kDefaultInputDecorationTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: const HomeScreen(),
  ));
}
