import 'package:flutter/material.dart';
import 'package:test1app/screens/home/home.dart';

class Registration extends StatefulWidget {
  const Registration({Key key}) : super(key: key);

  @override
  _ManageOrdersState createState() => _ManageOrdersState();
}

class _ManageOrdersState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: Text("Manage Orders page"),
            leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => Home()),
      );
    },
  ),
            ),
        body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Lorem Ipsum'),
          subtitle: Text('$index'),
        );
       }
      ),
     );
  }
}