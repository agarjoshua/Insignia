import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1app/Models/user.dart';
import 'package:test1app/screens/wrapper.dart';
import 'package:test1app/services/auth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
          child: MaterialApp(
          home: Wrapper(),
        
      ),
    );
  }
}

