import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  //helper methods to prevent congestion and make code easier to read
  Widget emailField() {
    return TextFormField(
      keyboardType:
          TextInputType.emailAddress, //adjusts keyboard for email input
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true, //obscures text
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    //has a little bit of shadowing underneath it
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit!'),
      onPressed: () {},
    );
  }
}
