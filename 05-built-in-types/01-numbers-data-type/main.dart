main() {
  var hex = 0xFFFFFFFF;
  print('$hex \n');

  print('-' * 20);

  num i1 = 10;
  int i2 = 10;
  num i3 = 0xa;
  print('i1 = $i1 and i2 = $i2');
  print('i3 = $i3 \n');

  print('-' * 20);

  num d1 = 10.20;
  double d2 = 11.30;
  print('d1 = $d1 and d2 = $d2 \n');

  print('-' * 20);

  /// convert String into number
  num i4 = num.parse('44');
  print('i4 = $i4 "String to number"');

  /// convert number into String
  String s1 = 44.toString();
  print('s1 = $s1 "number int to String"');
  String s2 = 40.23.toString();
  print('s2 = $s2 "number double to String"');
  String piAsString = 3.14159.toStringAsFixed(2);
  print('pi = $piAsString \n');

  print('-' * 20);

  ///
  // String -> int
  var one = int.parse('1');
  assert(one == 1);
  print(one);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  print(onePointOne);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  print(oneAsString);

// double -> String
  String piAsString2 = 3.14159.toStringAsFixed(2);
  assert(piAsString2 == '3.14');
  print(piAsString2);
}
