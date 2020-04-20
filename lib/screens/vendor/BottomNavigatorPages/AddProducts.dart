import 'package:flutter/material.dart';
import 'Registration.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  get _formKey => null;

  set productType(String productType) {}

  set title(String title) {}

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
         body: Padding(

    padding: EdgeInsets.all(12),

    child: Form(

      key: _formKey,

      child: Column(

        children: <Widget>[

          TextFormField(

            decoration: InputDecoration(

              border: InputBorder.none,

              hintText: 'Product Title',

              fillColor: Colors.grey[300],

              filled: true,

            ),

            validator: (value) {

              if (value.isEmpty) {

                return 'Please enter Product Title';

              }

            },

              onSaved: (value) => title = value

          ),

          SizedBox(height: 16,),

          TextFormField(

            keyboardType: TextInputType.numberWithOptions(),

            decoration: InputDecoration(

              border: InputBorder.none,

              hintText: 'Price',

              fillColor: Colors.grey[300],

              filled: true,

            ),

            validator: (value) {

              if (value.isEmpty) {

                return 'Please enter The price';

              }

            },

              // onSaved: (value) => price = value

          ),

          Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            OutlineButton(
              child: Text('Choose Image'),
               onPressed: () {},
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              child: Text('Upload Image'),
              onPressed: () {},
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'projected status of the upload',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),

          RaisedButton(

            splashColor: Colors.red,

            onPressed: () {} ,

            child: Text('add Product', style: TextStyle(color: Colors.white)),

            color: Colors.blue,

          )

        ],

      ),

    ),

  ),

    );

  }
}