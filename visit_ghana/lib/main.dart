import 'package:flutter/material.dart';
import 'package:visit_ghana/screens/splash_screen.dart';

void main() {
  runApp(const VisitGhana());
}

class VisitGhana extends StatelessWidget {
  const VisitGhana({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      title: 'Visit Ghana',
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Visit Ghana'),
      //   ),
      //   body: const Center(
      //     child: Text('Welcome to Ghana!'),
      //   ),
      // ),
      home:Splash(),
    );
  }
}