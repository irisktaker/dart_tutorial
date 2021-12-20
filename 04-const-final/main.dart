void main() {
  var temperatureToday = 22.0;
  temperatureToday = 23.0;
  print('Temperature today is: $temperatureToday');

  /// const
  /// fixed value we cant change it at any time
  /// ----
  /// The Difference between Const and Final
  /// ----
  /// 1-
  /// if i know the exact value we need to assign
  /// to the value in the compile-time
  /// so i use const
  /// EX:
  // const date = DateTime.now(); will give us an error coz it runs on the c.t

  /// 2-
  /// we can use the constant (const) with the
  /// value not only the variable
  /// EX:
  var numbers = [1, 2, 3];
  print('Number in index 2 = ${numbers[2]}');
  numbers[2] = 200;
  print('Number in index 2 = ${numbers[2]}');

  final numbers2 = const [1, 2, 3];
  print('Number in index 0 = ${numbers2[0]}');
  // numbers2[0] = 200; // we can not change the const value
  // print('Number in index 0 = ${numbers2[0]}');

  const numbers4 = const [1, 2, 3];
  print('Number in index 0 = ${numbers4[1]}');
  // numbers4[1] = 200; // we can not change the const value
  // print('Number in index 0 = ${numbers4[1]}');

  const water_boiling_temperature = 100;
  print('Water boiling temperature is: $water_boiling_temperature');

  print('\n-\n' * 1);

  /// final
  /// fixed value we cant change it at any time
  /// ----
  /// The Difference between Const and Final
  /// ----
  /// 1-
  /// if i don't know the exact value i need to assign
  /// to the value in the compile-time
  /// so i use final
  /// EX:
  final date = DateTime.now();
  print('Date now is: $date');

  /// 2-
  /// we can't use the final with the value of variable
  /// EX:
  // final numbers3 = final [1, 2, 3]; // error

  final pi = 3.14;
  print('The pi value is: ~$pi');
}
