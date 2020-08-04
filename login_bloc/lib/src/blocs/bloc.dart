//A Bloc is a middleman between a source of data and widgets that need the data.
//Think about the "Keep me Logged In" checkbox.

import 'dart:async';

import 'dart:async';
import 'validators.dart';

//a mixin likes to copy&paste methods onto a base class in dart, so extend
//the most basic class (does nothing) to please dart
class Bloc extends Object with Validators {
  //we are only going to be working with String value types
  final _email = StreamController<String>();
  final _password = StreamController<String>();
  //an underscore indicates that the variable is private (for convenience for other engineers)

  // Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  //you receive either a valid email/pass or an error msg

  //Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //nothing special here, just a method to make dart happy because
  //when you create a StreamController, it auto has a sink coming with it
  //that stays open and waits forever.
  dispose() {
    _email.close();
    _password.close();
  }
}

/* 2 ways of Applying a Bloc

1. Single Global Instance
Possibly OK for small apps

2. Scoped Instances
Possibly better for large apps

*/
//1:
final bloc = Bloc(); //one universal bloc for the entire application
