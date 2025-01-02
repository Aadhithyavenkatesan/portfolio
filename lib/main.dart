import 'package:flutter/material.dart';
import 'package:portfolio/contactDesk.dart';
import 'package:portfolio/contactMob.dart';
import 'package:portfolio/desktop.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/mobile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
       home:width < 576 ? Mobile() : Desktop(),
    );
  }
}
