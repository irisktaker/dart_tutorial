/// Dart programming language
/// Functions as first-class objects
/// - Dart is a true object-oriented language
/// - So even functions are objects and have a type, Function
/// - This means that functions can be assigned to variables
/// - or passed as arguments to other functions

// default of main
// main(List<String> arguments)..[3]
void main(List<String> arguments) { 
  var courses = ['Dart Programming', 'Android', 'IOS', 'Php'];

  /// .. [1]
  /// pass a function as a parameter to another function
  courses.forEach(printElement);

  /// .. [2]
  /// assign function to variable
  var num = myNum;
  num(49);

  /// .. [3]
  /// this will print the arguments from the main method
  /// we give the arguments from the terminal
  /// ex: after dart 'filename.dart' (here we can add what we want to print)

  // print('The first argument ${arguments[0]}');
  // print('The first argument $arguments');
}

// pass a function to another function
void printElement(String element) {
  print('Your element $element');
}

void myNum(int x) => print(x);
