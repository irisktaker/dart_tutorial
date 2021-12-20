main() {
  /// here the compiler assign the value of String
  /// so we can only use String for the variable called name
  var name = 'name';
  print(name);

  /// x here will define as a dynamic
  /// so we can change the value of it anytime
  var x;
  x = 10;
  x = 'String';
  x = false;
  print(x);

  /// the difference between dynamic and Object
  dynamic y = 10;
  y = 'Dynamic can\'t check on the compiling-time but it runs on the run-time error';
  y = true;
  y = 10.00;
  // print(y.foo());
  print(y);

  /// foo() is undefine method but dynamic can't see the error
  /// until we run the app (run-time error)

  Object z = 10;
  z = 'Object can check on the compiling-time';
  z = false;
  z = 90.99;
  // print(z.foo());
  print(z);

  /// foo() is undefine method and Object can see the error
  /// Object see errors in the compile-time
  /// before we run the app
}
