main() {
  String singleQuote = 'Hello World';
  String doubleQuote = "Hello There";
  String question1 = "What's up";
  String question2 = 'Whta\'s up there';
  print(singleQuote +
      '\n' +
      doubleQuote +
      '\n' +
      '${question1 + '\n' + question2}');
  print('''I can print 
in multi lines
Yups,''');
  print("""
  Or
  use 
  triple quotes""");
  // using trim
  print("""
  "using trim"
  in 
  triple quotes"""
      .trim());
  print(singleQuote.contains('Hello'));
  print(singleQuote.contains('hello'));
  print(doubleQuote.startsWith("Hello"));
  print(doubleQuote.endsWith("there"));
  print(question1.indexOf('up')); // W0 h1 a2 t3 '4 s5  6 u7 p8

  /// Extracting data
  String programming_lang = 'Dart, Python, JavaScript, Java, C++';
  var data = programming_lang.split(', ');
  // data now is a List<String> type
  print(data);
  print(programming_lang);
  print(data[0]);
  print(data[3].toUpperCase());
  print(data[2].toLowerCase());
  print(data[1].isEmpty);

  print('');
  print('-' * 40);
  print('');

  /// ----------------------------------------------
  /// String Builder
  /// Dart StringBuffer and Regular Expression
  ///
  print('Dart StringBuffer and Regular Expression');

  // create a variable in the heap memory
  // address (for ex: the address name 0x01)
  String name = 'Naser';
  // reassign the value of the variable (name) with a new address
  // in the memory (for ex: the address name 0x02)
  name = 'Naser Sami';
  // again reassign the value of the variable (name) with a new address
  // in the memory (for ex: the address name 0x03)
  name = 'Naser Sami Ebedo';
  // print the last value of the variable
  // this way takes more load on the memory and make the app slower
  print('Your full name is $name');

  print('');
  print('-' * 40);
  print('');

  /// StringBuffer();
  var sb = new StringBuffer();
  sb.write('Android');
  sb.writeAll(['IOS', 'Dart', 'Flutter', 'Swift', 'Java'], ' ');
  sb.write('.');
  String printSB = sb.toString();
  print('Available Courses $printSB');

  print('');
  print('-' * 40);
  print('');

  /// Regular Expression - RegExp();
  String s1 = "21 of November";
  bool exist = s1.contains(RegExp(r'\d+'));
  String s2 = s1.replaceAll(RegExp(r'\d+'), 'xx');
  print(s1);
  print('Does s1 contain a digits? Answer is: $exist');
  print(s2);

  // ---
  String des = 'First line\n'
      'Second line\n'
      'Third line\n';
  print(des);
}
