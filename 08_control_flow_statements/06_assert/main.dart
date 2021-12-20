main() {
  // Assert
  // assert (condition, optional message)
  // we use assert for debug

  String name = 'Naser Ebedo';
  // we need to check the variable name is null or not
  // after 200 > lines of codes
  // ignore: unnecessary_null_comparison
  assert(name != null);

  // String? name2;
  // // ignore: unnecessary_null_comparison
  // assert(name2 != null); // Unhandled exception: error

  // ex2
  var age = 6;
  // assert(age >= 7);
  assert(age > 6, 'Age must be greater than or equal to 7');
}
