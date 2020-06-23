import 'package:flutter/material.dart';

void main() {
  //Remember: home is the "home/main widget"
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), //add is a + icon
        onPressed: () {
          print('Hi there!');
        },
      ),
      appBar: AppBar(
        title: Text('Lets see some images!'),
      ),
    ),
  );

  runApp(app);
}