import 'package:flutter/material.dart';
import 'package:test1app/screens/vendor/BottomNavigatorPages/AddProducts.dart';
import 'package:test1app/screens/vendor/BottomNavigatorPages/Registration.dart';
import 'package:test1app/screens/vendor/BottomNavigatorPages/manageDeliveries.dart';


//This section handles all the footer navigation and logic with state transfer and all that good stuff

class BottomNavigationBarController extends StatefulWidget {
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}
 
// Creates a class for all the navbar sections

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  final List<Widget> pages = [
    Registration(
      key: PageStorageKey('Page1'),
    ),
    AddProducts(
      key: PageStorageKey('Page2'),
    ),
    ManageDeliveries(
      key: PageStorageKey('Page3'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

 // Contains the constrains and styling of the bottom navigation bar 
  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Text('Registration')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('Add products')),
           BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('Manage deliveries')),  
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}