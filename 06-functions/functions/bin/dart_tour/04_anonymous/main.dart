// ---------------------
// Anonymous functions
// ---------------------
// Most functions are named, such as main() or printElement().
// You can also create a [nameless] function called an anonymous function,
// or sometimes a [lambda or closure].
// You might assign an anonymous function to a variable so that, for example, you can add or remove it from a collection.
//
// An anonymous function looks similar to a named function— zero or more parameters,
// separated by commas and optional type annotations, between parentheses.

// The code block that follows contains the function’s body:
//
// ([[Type] param1[, …]]) {
//   codeBlock;
// };

// ignore_for_file: avoid_function_literals_in_foreach_calls

// The following example defines an anonymous function with an untyped parameter, item.
// The function, invoked for each item in the list, prints a string that includes the value at the specified index.
void main() {
  List<String> courses = ['Java', 'Dart', 'C++', 'Python'];
  courses.forEach(printElement);

  print('\n########################\n');

  // Anonymous Function
  //   ..(() {});
  courses.forEach((courses) {
    print('Course : $courses');
  });

  print('\n########################\n');

  // if the function is only one statement
  // we can use a short hand function
  courses.forEach((e) => print('Course : $e')); // an element of a list
  courses.forEach((e) => print('Course : $courses')); // a whole list

  print('\n########################\n');

  // Anonymous Function
  const list = ['apple', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)} : $item');
  });

  print('--------------------');

  // If the function contains only a single expression or return statement, you can shorten it using arrow notation.
  // Paste the following line into DartPad and click Run to verify that it is functionally equivalent.

  list.forEach((item) => print('${list.indexOf(item)} : $item'));

  print('\n########################\n');

  // for loop
  for (var courses in courses) {
    print('Course : $courses');
  }
}

// Named function
void printElement(String course) {
  print('Course : $course');
}
