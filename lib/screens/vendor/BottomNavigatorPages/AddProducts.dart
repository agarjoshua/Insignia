import 'package:flutter/material.dart';
import 'Registration.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text("Add products page"),
            leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => Registration()
            ),
           );
          }
        ),
       ),
        body: Center(
            child: Text("And this page should definately be the second....lol again")
        )
    );

  }
}