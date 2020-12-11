import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/homeScreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nike",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.numans().fontFamily,
      ),
      home: Nike(),
    );
  }
}

class Nike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

void main() => runApp(MyApp());
