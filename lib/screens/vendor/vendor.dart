import 'package:flutter/material.dart';
import 'package:test1app/screens/vendor/navigation_bar_controller.dart';

class Vendor extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Demo',
      home: BottomNavigationBarController(),
    );
  }
}