void main() {
  int x; // called variable declaration
  x = 5; // called variable initialization
  print("x = " + x.toString());

  /// output
  /// + means concatenation
  String name = "Naser _irisktaker";
  print("Your name is $name"); // $ means string interpolation

  var age = 27; // int // auto assign the right data-type for the variable
  // var --> used without assignment any data-types
  // age = '27';  // we cannot change the type of (var) if we initialize it
  /// var (dart) is a strongly typed
  print(age);

  // if we declare the var we can reinitialize it
  // ex:
  var year; // dynamic
  year = 2021;
  year = 'String 2021';
  print(year);

  dynamic dyn = 22;
  dyn = true;
  dyn = 'i can change the type';
  print(dyn);

  Object num = 10;
  num = 'String';
  num = true;
  print(num);
}
