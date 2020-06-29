import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container (
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

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress, //custom keyboard layout specific for email input
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com', //gives ex to user
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true, //plain text -> pw
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit!'),
      onPressed: () {}, //required parameter
    );
  }
}