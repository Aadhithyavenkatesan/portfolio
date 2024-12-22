import 'package:flutter/material.dart';
import 'package:portfolio/desktop.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/mobile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: width < 576 ? Mobile() : Desktop(),
    );
  }
}
