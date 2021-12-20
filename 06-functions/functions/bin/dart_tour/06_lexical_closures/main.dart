// Lexical closures

// A closure is a function object that has access to variables in its lexical scope,
// even when the function is used outside of its original scope.

// ignore_for_file: prefer_function_declarations_over_variables

void main() {
  // anonymous function
  Function function1 = () {
    String name = 'Tim';
    Function function2 = () {
      name = 'Steve';
      print('Name is : $name');
    }; // function2
    return function2;
  }; // function1
  // when we call function1 we will return function2

  var f = function1();
  f(); // f as a reference - it will call function1 > and function1 will call function2

  // sum function
  var sum1 = sum(2);
  var sum2 = sum(4);
  print(sum1(5));
  print(sum2(9));

  // Create a function that adds 2.
  var add2 = makeAdder(2);
  // Create a function that adds 4.
  var add4 = makeAdder(4);
  assert(add2(3) == 5);
  assert(add4(3) == 7);
} // main

Function sum(num add) {
  return (i) => add + i;
}

// Functions can close over variables defined in surrounding scopes.
// In the following example, makeAdder() captures the variable addBy.
// Wherever the returned function goes, it remembers addBy.
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
