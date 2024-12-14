import 'package:flutter/material.dart';
import 'package:wallet/add_to_card.dart';
// import 'package:wallet/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AddToCard(),
      ),
    );
  }
}
