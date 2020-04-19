import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1app/Models/user.dart';
import 'package:test1app/screens/authenticate/authenticate.dart';
import 'package:test1app/screens/home/home.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    //return home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

