/// static returns to the class
/// this. returns to the object

class Human {
  // Function
  static void printInfo(fName, lName, age, length) {
    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }
}

// ex: 2
class Person {
  // Constructor
  String? fName;

  Person(this.fName, lName, age, length) {
  
    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }
}

class Cat {
  static String? name;
  static info({p_name}) {
    name = p_name;
    print(name);
  }
}

void main() {
  // if we used static so we use the class not the object
  Human.printInfo('Yousef', 'Ahmad', 32, 1.70);
  print('');
  Human.printInfo('Jeff', 'John', 52, 1.73);

  print('\n======================================\n');

  print('\n======================================\n');
  // Cat.name = 'Cat';
  Cat.name;
  Cat c1 = Cat();
  // c1.info();
  Cat.info(p_name: 'Cat1');

  Cat c2 = Cat();
  // c2.info();
  Cat.info(p_name: 'Cat2');
}
