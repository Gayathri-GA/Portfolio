import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/homescreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto-Bold'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
