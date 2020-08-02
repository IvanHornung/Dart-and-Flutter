/*Characteristics of a Cake Factory

-The factory receives an 'order', does some processing on it, then spits
  out a cake on the other end
-The factory isn't built when the order is made. The factory is made ahead of time
-The factory spends a lot of time sitting around waiting for an order to come in
-Someone has to stand around waiting for an order to come in. This is the 
  'entry point' into the factory.
-After a cake is made, someone has to come pick it up
*/

import 'dart:async';

class Cake {}

class Order {
  String type;
  Order(this.type);
}

void main() {
  final controller = new StreamController(); //consists of sink -> stream

  final order = new Order('banana');

  controller.sink.add(order);
  //order -> sink "order taker" -> stream (Factory where processing is done)
}
