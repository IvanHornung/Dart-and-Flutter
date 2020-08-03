import 'dart:async';

import 'dart:async';

class Bloc {
  //we are only going to be working with String value types
  final _email = StreamController<String>();
  final _password = StreamController<String>();
  //an underscore indicates that the variable is private (for convenience for other engineers)

  // Add data to stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  //Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}
