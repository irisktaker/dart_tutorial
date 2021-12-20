void main() {
  print('\n#####################################################\n');

  /// When we call the [parameters] in the main method
  /// we call them [arguments ()]
  ///
  /// we must add the requirement - required arguments
  /// note: this type called positional parameters (arguments)
  print('1.0- Positional parameters');
  sayHello('hello there', 3, true);

  print('');

  print(
      '1.1- Positional Optional parameters we add parameter inside [] to be optional');
  printMessage('Aliens');
  printMessage('message', 1, 'true');

  print('\n#####################################################\n');

  print('2.0- Named parameters');
  namedParameter(agree: true, message: 'Hola', number: 10);
  namedParameter(message: 'Hola', number: 9, agree: true);
  namedParameter(message: 'Hola');

  print('\n#####################################################\n');

  print(
    '2.1- Default Named parameters Value\n'
    'The default value of the variable agree is true\n'
  );
  defaultValue(message: 'Okay', agree: false, number: 77);
  defaultValue(message: 'Okay');

  print('\n#####################################################\n');

  print(print_message('Naser', 'Great days came and coming'));
  print(print_message('Naser', 'Great days came and coming', 'linux device'));

  print('\n#####################################################\n');

  enableFlags();
  enableFlags(bold: true, hidden: true);
  enableFlags(bold: true, hidden: false);
  enableFlags(bold: false, hidden: true);
  enableFlags(bold: true);
  enableFlags(hidden: true);
}

///  ################################################################

///  [ parameter () ]

/// [1.0]- Positional parameters ( 1, 2, 3) must add them in the exact position
///  when we call them in the calling method (main method)
///  ('hello there', 3, true ) --> true no error
///  (3, 'hello', true) --> will give an error

///  [note: this type called positional parameters (arguments)]
void sayHello(String hello, int lines, bool isTrue) {
  print('Hello Developers');
}

/// [1.1]- Positional Optional parameters []
/// [we add parameter inside [] to be optional]
void printMessage(String message, [int? number, String? info]) {
  print('This message from the aliens lives in pluto');
}

/// [2.0]- Named parameters [ {} ]
/// ? for null safety
void namedParameter({required String? message, int? number, bool? agree}) {
  print('Hello from the named parameter');
}

/// [2.1]- Default Named parameters Value [ {} ]
/// ? for null safety                                  Default Value
void defaultValue({String? message, int? number, bool? agree = true}) {
  print('Hello from the default named parameter value');
}

/// ####
/// ####
// ignore: non_constant_identifier_names
String print_message(String from, String msg, [String? device]) {
  // var
  String result = '$from says $msg';
  if (device != null) {
    result = '$result with $device';
  }
  return result;
}

/// ####
/// ####
void enableFlags({bool bold = false, bool hidden = false}) {
  print('Bold = $bold, and hidden = $hidden');
}
