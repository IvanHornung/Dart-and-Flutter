import 'package:flutter/material.dart';
import '../widgets/cat.dart';

//creating StatefulWidgets because no other part of our app cares about this data

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  //Animation class that controls a value of type double
  Animation<double> catAnimation;
  AnimationController catController;

  //special method. everytime a HomeState is created, this is auto invoked.
  //only special in a State-based class

  initState() {
    super.initState();

    catController = AnimationController(
      duration: Duration(milliseconds: 200), //full animation length
      vsync: this,
      //vsync=TickerProvider: handle from outside world into our widget that
      //gives the outside word of flutter to reach in and tell our anim to progress
      //along and essentially render the next frame of our animation. This class is a Mixin
    );

    //0->-50 makes cat's ears poke out of box
    catAnimation = Tween(begin: -35.0, end: -80.0).animate(
      CurvedAnimation(
        parent: catController,
        curve: Curves.easeIn, //increasing exponential change in value
      ),
    );
  }

  onTap() {
    if (catController.status == AnimationStatus.completed) {
      //@ end:100.0
      catController.reverse(); //opposite of forward
    } else if (catController.status == AnimationStatus.dismissed) {
      //initial pos
      catController.forward(); //play the animation
    }
  }

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation!'),
      ),
      body: GestureDetector(
        child: Center(
          //centers widgets
          child: Stack(
            overflow: Overflow
                .visible, //makes the cat's ears visible beyond the bounds
            //when you tap on the child, it detects
            //layout widget that stacks an array of widgets on top of each other
            children: <Widget>[
              buildCatAnimation(), //we want the box on top of the cat, so list cat first
              buildBox(),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  Widget buildCatAnimation() {
    return AnimatedBuilder(
      animation: catAnimation,
      builder: (context, child) {
        return Positioned(
          child: child,
          top: catAnimation.value, //at the top
          right: 0.0, //zero pixels from the right
          left: 0.0, //zero pixels from the left (so then it shrinks)
        );
      },
      child: Cat(),
    );
  }

  //box for cat
  Widget buildBox() {
    return Container(
      height: 200.0,
      width: 200.0,
      color: Colors.brown,
    );
  }
}
