// ignore: slash_for_doc_comments
// ignore_for_file: non_constant_identifier_names

/** 
 *  import 'package:functions/functions.dart' as functions;

    void main(List<String> arguments) {
    print('Hello world: ${functions.calculate()}!');
   } 
*/

/**
 * Functions
 *  Dart is a true object-oriented language, so even functions are objects 
 *  and have a type, Function. 
 *  This means that functions can be assigned to variables 
 *  or passed as arguments to other functions. 
 *  You can also call an instance of a Dart class as if it were a function. 
 *  For details, see Callable classes.
 * 
 */

/// function declaration
///
/// types: -->
///     1- non_return_type ->> void
///         - function short hand syntax
///           sum() => print(20 + 10);
///     2- return_type ->> any_data_type
///
/// Syntax: [function declaration]
///
/// type identifier_function_name(parameter){
///   function_body
/// }
///
///  ################################################################
///
///  [caller function]
void main() {
  /// call the function
  ///
  /// calling void functions - non return types
  print('\ncalling void functions - non return types:');
  add();
  sum();
  printClass();

  print('\n#####################################################\n');

  /// calling return functions
  print('calling return functions:');
  // return_number();
  print(return_num());

  int printFunction = returnNumber();
  print(printFunction);

  print('\n#####################################################\n');

  print(isNoble(4));
}

///  ################################################################
///  ################################################################
///  [method (function)]
///
add() {
  print(2 + 3);
}

/// function short hand syntax
sum() => print(20 + 10);

/// non return type method (function) - worker function
void printClass() {
  print('Java Class');
}

/// return type method (function)
String return_num() => '10 * 100';
int returnNumber() {
  return 10 * 10;
}

///  ########### ########### ########### ###########

// Here’s an example of implementing a function:

bool isNoble(int atomicNumber) {
  String? _nobleGases = 'Naser';
  // ignore: unnecessary_null_comparison
  return _nobleGases[atomicNumber] != null;
}

// Although Effective Dart recommends type annotations for public APIs, the function still works if you omit the types:

isNoble2(atomicNumber) {
  String? _nobleGases;
  // ignore: unnecessary_null_comparison
  return _nobleGases![atomicNumber] != null;
}

// For functions that contain just one expression, you can use a shorthand syntax:

String? _nobleGases;
// ignore: unnecessary_null_comparison
bool isNoble3(int atomicNumber) => _nobleGases![atomicNumber] != null;
// The => expr syntax is a shorthand for { return expr; }. 
// The => notation is sometimes referred to as arrow syntax.
// Note: Only an expression—not a statement—can appear between the arrow (=>) and the semicolon (;). 
// For example, you can’t put an if statement there, but you can use a conditional expression.

///  ########### ########### ########### ########### ########### 

