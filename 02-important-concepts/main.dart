main() {
  /// 1]:
  /// num is an object
  /// .  --> object.method [the objectName  .(is a part of) methodName ]
  /// function (method) name to use with the object
  /// objectName.methodName
  int num = -22;
  print(num);
  num = num.abs();
  print(num);

  /// 2]:
  /// Dart is strongly typed
  /// every variable must have a type
  var x = null;
  print(x);

  /// 3:
  print(numbers);

  /// 4:
  printName();

  /// 5:
  print('the top-level variable number value is $number');
  print('the top-level variable name value is $name');
  // note on instance variable
  String instanceVarName = 'instance variable';
  print(instanceVarName);

  /// 6:
  print(_privateNum);
}

/// 3]:
/// generic types List<>
List<int> numbers = [1, 2, 3, 4];

/// 4]:
/// top-level function
void printName() {
  print('My name is Naser');
}

/// 5]:
/// top-level variables
int number = 100;
String name = 'Naser';

/// 6]:
/// private variable (_)
int _privateNum = 001;
