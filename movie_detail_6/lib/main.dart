import 'package:flutter/material.dart';
import './movieDetail_6.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieDetail_6(),
      debugShowCheckedModeBanner: false,
    );
  }
}
