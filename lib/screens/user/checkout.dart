import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckOut',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckOut'),
        ),
        body: const Center(
          child: const Text('We are vending'),
        ),
      ),
    );
  }
}