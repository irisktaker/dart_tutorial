// Arithmetic operators

// Dart supports the usual arithmetic operators, as shown in the following table.
// Operator 	  Meaning
//  + 	        Add
//  – 	        Subtract
//  -expr 	    Unary minus, also known as negation (reverse the sign of the expression)
//  * 	        Multiply
//  / 	        Divide
//  ~/ 	        Divide, returning an integer result
//  % 	        Get the remainder of an integer division (modulo)

import 'dart:io';

void main() {
  print('Enter two numbers to calculate');
  num num1 = int.parse(stdin.readLineSync()!);
  num num2 = int.parse(stdin.readLineSync()!);

  sumTwoNumbers(num1, num2);
  subTwoNumbers(num1, num2);
  mulTwoNumbers(num1, num2);
  divTwoNumbers(num1, num2);
  intDivTwoNumbers(num1, num2);
  modTwoNumbers(num1, num2);
}

void sumTwoNumbers(num x, num y) => print('$x + $y = ${(x + y)}');
void subTwoNumbers(num x, num y) => print('$x - $y = ${(x - y)}');
void mulTwoNumbers(num x, num y) => print('$x * $y = ${(x * y)}');
void divTwoNumbers(num x, num y) => print('$x / $y = ${(x / y)}');
void intDivTwoNumbers(num x, num y) => print('$x ~/ $y = ${(x ~/ y)}');
void modTwoNumbers(num x, num y) => print('$x % $y = ${(x % y)}');
