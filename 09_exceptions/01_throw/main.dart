import 'dart:io';

void main() {
  // Exceptions

  try {
    print('Enter first number: ');
    int firstNumber = int.parse(stdin.readLineSync()!);
    print('Enter second number: ');
    int secondNumber = int.parse(stdin.readLineSync()!);

    // int result = firstNumber ~/ secondNumber; // risky code
    // print('$firstNumber / $secondNumber = $result');

    // exception type of errors types
    // happen when the application run

    // try {
    //   int result = firstNumber ~/ secondNumber; // risky code
    //   print('$firstNumber / $secondNumber = $result');
    // } on IntegerDivisionByZeroException {
    //   print('Cannot divide by zero');
    // }

    int result = firstNumber ~/ secondNumber; // risky code
    print('$firstNumber / $secondNumber = $result');
    // e => IntegerDivisionByZeroException , s=> StackTrace
  } on IntegerDivisionByZeroException catch (e, s) {
    print('Cannot divide by zero error type: $e\n$s');
    // } on Exception (..)
  } on FormatException catch (error) {
    print('Invalid input error type: $error');
  } finally {
    // code is run whether or not exception is throw
    // we can use it for clear any resources (files, database connection)
    print('this code will executed whether exception occurs or not');
  }

  print('\n######################################\n');
}
