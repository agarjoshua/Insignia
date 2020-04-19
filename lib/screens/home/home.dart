// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test1app/screens/user/order.dart';
import 'package:test1app/screens/vendor/vendor.dart';
import 'package:test1app/services/auth.dart';

class Home extends StatefulWidget {

  

  Home({Key key}) : super(key: key);
  @override
  
  _DividerWidgetState createState() => _DividerWidgetState();
}
class _DividerWidgetState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
       appBar: AppBar(
         title: Text(
           'Insignia',
           style: TextStyle(fontFamily: 'IndieFlower'),
           ),
         backgroundColor: Colors.grey[400],
         elevation: 0.0,
         actions: <Widget>[
           FlatButton.icon(
             icon: Icon(Icons.person), 
             label: Text(
               'logout',
               style: TextStyle(fontFamily: 'IndieFlower'),
               ), 
             onPressed: () async {
               await _auth.signOut();
             },)
         ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
              Card(
                child: new InkWell(
                  onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                  ),
                child: Container(
                  height: 270,
                  width: 900,
                  child: Center(child:Text(
                    "Order for a gas refill", 
                    style:  TextStyle(
                       color: Colors.white,
                       fontFamily: 'IndieFlower',
                       fontSize: 20.0,
                       ),
                       ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
               )
              ),
              Divider(
                height: 10.0,
                indent: 5.0,
                color: Colors.black87,
              ),
              Card(
                 child: new InkWell(
                  onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vendor()),
                  ),
                child: Container(
                  height: 270,
                  width: 900,
                  child: Center(child:Text(
                    "Become a vendor",
                     style: TextStyle(
                       color: Colors.white,
                       fontFamily: 'IndieFlower',
                       fontSize: 20.0,
                       ),
                     ),
                     ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              )
              )
          ],
        ),
      )
    );
  }
}