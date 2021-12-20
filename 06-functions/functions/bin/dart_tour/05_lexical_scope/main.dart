// Dart Lexical Scope - scope of variables
//
// Dart is a lexically scoped language, which means that the scope of variables is determined statically,
// simply by the layout of the code. You can “follow the curly braces outwards” to see if a variable is in scope.

// Global Variable
num topLevel = 1;

void main() {
  // inside the function
  var varInsideMain = 2;

  // function inside main
  void myFunction() {
    var varInsideFunction = 3;

    void nestedFunction() {
      var varInsideNestedFunction = 4;

      print('\n### nestedFunction ##########################\n');

      // nestedFunction can access
      print(topLevel);
      // myFunction(); // error
      print(varInsideMain);
      print(varInsideFunction);
      // nestedFunction(); // error
      print(varInsideNestedFunction);
    } // ends of nestedFunction

    print('\n### myFunction #############################\n');

    nestedFunction(); // Calling nestedFunction() inside myFunction()

    // myFunction can access
    print(topLevel);
    // myFunction(); // error
    print(varInsideMain);
    print(varInsideFunction);
    // nestedFunction();
    // print(varInsideNestedFunction); error
  } // ends of myFunction

  print('\n## main method ##############################\n');

  myFunction(); // Calling myFunction() inside mainFunction()
  // myFunction can access
  print('Top level from myFunction $topLevel');
  myFunction(); // error
  print('Var inside main from myFunction $varInsideMain');
  // print(varInsideFunction); error
  // nestedFunction();
  // print(varInsideNestedFunction); error
}
