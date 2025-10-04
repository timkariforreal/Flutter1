import 'package:flutter/material.dart';
import 'navigation_screen.dart';

void main() {
  runApp(const StudyApp());
}

class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
