import 'package:flutter/material.dart';
import 'package:random_colored/presentation/screen/home.dart';

/// root class
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
