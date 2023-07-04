import 'package:contacts/screens/home_screen.dart';
import 'package:contacts/utils/network.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Network.getData();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'دفترچه تلفن آنلاین',
      home: HomeScreen(),
    );
  }
}
