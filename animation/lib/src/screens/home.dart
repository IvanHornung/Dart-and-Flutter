import 'package:flutter/material.dart';
import '../widgets/cat.dart';

//creating StatefulWidgets because no other part of our app cares about this data

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation!'),
      ),
      body: buildAnimation(),
    );
  }

  Widget buildAnimation() {
    return Cat();
  }
}
