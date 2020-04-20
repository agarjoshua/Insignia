import 'package:flutter/material.dart';

import 'AddProducts.dart';

class ManageDeliveries extends StatefulWidget {
  const ManageDeliveries({Key key}) : super(key: key);

  @override
  _ManageDeliveriesState createState() => _ManageDeliveriesState();
}

class _ManageDeliveriesState extends State<ManageDeliveries> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text("manage deliveries page"),
             leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => AddProducts()
           )
              );
    },
  ),
            ),
        body: Center(
            child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Lorem Ipsum is a test aye'),
          subtitle: Text('$index'),
        );
      }),
        )
    );
  }
}