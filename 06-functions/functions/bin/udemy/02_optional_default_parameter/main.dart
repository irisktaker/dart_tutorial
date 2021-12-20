/// Optional & Default Parameter

void main() {
  // 1
  // sumInt(10); Error: 2 positional argument(s) expected, but 1 found.
  sumInt(10, 7);

  // 2.1
  sum(9);
  sum(7, 7);

  print('');

  // 2.2
  fixedPositionalValues('fixed', 1, 7.0, false);
  dynamicPositionalValues(
    doubleNum: 5.5,
    isFalse: true,
    name: 'dynamic',
    intNum: 2,
  );
  // first name and last name they are required
  // we add age by calling it's name
  info("Naser", "Ebedo", age: 27, address: 'Turkey');
}

// 1 Default parameter
void sumInt(int x, int y) {
  print(x + y);
}

// 2.1 Optional parameters []
// sum(int x, [int? y], z) error
void sum(int x, [int? y]) {
  print('x = $x');
  print('y = $y');
}

// 2.2 Optional parameters {}
void fixedPositionalValues(
    String name, int intNum, double doubleNum, bool isFalse) {
  print('Name is: $name'
      'Integer Number = $intNum'
      'Floating Number = $doubleNum'
      'Is False? $isFalse\n');
}

void dynamicPositionalValues(
    {String? name, int? intNum, double? doubleNum, bool? isFalse}) {
  print('Name is: $name'
      'Integer Number = $intNum'
      'Floating Number = $doubleNum'
      'Is False? $isFalse\n');
}

// default value for address = 
void info(firstName, lastName, {age, phone, address = 'amman'}) {
  print('First name: $firstName\n'
      'Last name: $lastName\n'
      'Age: $age\n'
      'Phone: $phone\n'
      'Address: $address\n');
}
