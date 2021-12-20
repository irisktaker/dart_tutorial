// ex: 1
class Human {
  /// Attributes => Variables = خصائص
  /// in the class we assign the general attributes
  /// in the object we give them values
  String? fName;
  String? lName;
  int? age;
  double? length;

  // Function
  void printInfo() {
    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }

  // Constructor
  Human() {
    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }
}

// ex: 2
class Person {
  String? fName;
  String? lName;
  int? age;
  double? length;

  // Constructor
  Person(p_fName, p_lName, p_age, p_length) {
    fName = p_fName;
    lName = p_lName;
    age = p_age;
    length = p_length;

    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }
}

// ex: 3
class Cat {
  Cat(name, age) {
    print('First Name: ${name}');
    print('Age: ${age}');
  }
}

// ex: 4 -
// - with optional parameter
// - default value
class Dog {
  Dog(name, age,
      // [type] we can not add anything after optional [] , -> false
      [type = 'dog']) {
    print('First Name: ${name}');
    print('Age: ${age}');
  }
}

// ex: 5
// - named optional parameter {}
// - default value
class Lion {
  Lion({name, age, power = 'full'}) {
    print('First Name: ${name}');
    print('Age: ${age}');
  }
}

void main(List<String> args) {
  // object is a copy of the class
  // we give the objects values
  var h1 = new Human();
  h1.fName = 'Ahmad';
  h1.lName = 'Ali';
  h1.age = 20;
  h1.length = 1.71;
  // h1.printInfo(); it run when we call it

  /// Note:
  /// The Function doesn't run until we call it
  /// The Constructor run even if we didn't call it but when we create an object
  /// But it will not print values until we give values for variables
  /// So we need to make the Constructor to have Parameters
  ///
  print('\n======================================\n');

  Person p1 = Person('Mohammed', 'Yousef', 23, 1.67);

  print('\n======================================\n');
  Cat cat = new Cat('Goshi', 2);

  print('\n======================================\n');
  Dog dog = Dog('Dog', 3);

  print('\n======================================\n');
  Lion(name: 'Lion', age: 5);
}
