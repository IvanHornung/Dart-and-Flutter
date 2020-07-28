import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>(); //global var

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey, //asigning global var
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)), //manipulates spacing
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType
          .emailAddress, //custom keyboard layout specific for email input
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
      color: Colors.blue,
      child: Text('Submit!'),
      onPressed: () {
        formKey.currentState.reset();
      }, //required parameter
    );
  }
}
