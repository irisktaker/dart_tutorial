// Type test operators

// The as, is, and is! operators are handy for checking types at runtime.
// Operator 	Meaning
// as 	Typecast (also used to specify library prefixes)
// is 	True if the object has the specified type
// is! 	True if the object doesn’t have the specified type

void main(List<String> args) {
  var s1 = new Student();
  Teacher t1 = new Teacher();

  print(s1 is Teacher);
  print(t1 is Student);
  print(s1 is Student);
  print(t1 is! Student);
  // ignore: unnecessary_cast
  print((t1 as Teacher).name = 'Ali');
  // print((s1 as Teacher).name = 'Ali'); // Unhandled exception: error

  // The result of obj is T is true if obj implements the interface specified by T.
  // For example, obj is Object? is always true.
  // Use the as operator to cast an object to a particular type if and only
  // if you are sure that the object is of that type.
  // Example:
  // var employee;
  // (employee as Person).firstName = 'Bob';

  // If you aren’t sure that the object is of type T, then use is T to check the type before using the object.
  // if (employee is Person) {
  // Type check
  // employee.firstName = 'Bob';
  // }
}

class Person {
  String? firstName;
}

class Student {
  String? name;
}

class Teacher {
  String? name;
}
