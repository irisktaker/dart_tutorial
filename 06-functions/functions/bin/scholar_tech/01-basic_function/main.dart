///
/// Basic Function (method)
/// 
/// Defining the function in Dart:
/// Dart provides us with the facility of using functions in its program.
/// Syntax: 
///
///   return_type function_name ( parameters ) {
///     // Body of function
///      return value;
///   }
///
/// In the above syntax: 
///
///   - function_name defines the name of the function.
///   - return_type defines the datatype in which output is going to come.
///   - return value defines the value to be returned from the function.
///
/// The function is called as: 
/// Syntax: 
///   function_name (argument_list);
///   
///   - function_name defines the name of the function.
///   - argument list is the list of the parameter that the function requires.

void main() {
  print('Start program\n');
  // here we need to call the basic method to run it
  // by writing the function name
  myStory();
  print('\nEnd program');
}

void myStory() {
  print('-' * 10);
  print('My name is Naser');
  print('I learn coding coz I love computers and technology');
  print('I am Software creator');
  print('I am 27 years old');
  print('I create many mobile apps \n Now I am learning AI and ML');
  print('-' * 10);
  print('');
}
