import 'package:flutter/material.dart';
// import 'package:test1app/screens/authenticate/register.dart';
import 'package:test1app/services/auth.dart';
import 'package:test1app/shared/loading.dart';

class SignIn extends StatefulWidget {
  
  final Function toggleView;
  SignIn({ this.toggleView });

  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SignIn> {

  final AuthService _auth= AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  
  //Text field state

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Insignia'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
            widget.toggleView();
            }, 
            icon: Icon(Icons.person),
            label: Text('register'))
        ],
      ),
       body: Container(
        padding: EdgeInsets.symmetric(vertical:20.0 ,horizontal:50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'email',
                   ),
                 validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);

                }
              ),
              SizedBox(height: 20),
              TextFormField( 
                 decoration: InputDecoration(
                  hintText: 'password',
                   ),
                validator: (val) => val.length < 6  ? 'enter a password 6+ chars long' : null,
                obscureText: true,
                onChanged: (val) {
                   setState(() => password = val);

                }
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                   if ( _formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null){
                      setState(() {
                        error = 'could not sign in with those credentials';
                        loading = false;
                      });          
                      }
                    }
                  }
                ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          )
        )
      ),
    );
  }
}
     