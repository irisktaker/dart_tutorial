import 'animal.dart';

class Lion extends Animal {
  // Lion error
  // Missing concrete implementations of 'Animal.eat', 'Animal.move', and 'Animal.sleep'.
  // Try implementing the missing methods, or make the class abstract.

  @override
  eat() {
    // now we will add the - logic = details for each method
    print('Lions eats meats ..');
  }

  @override
  move() {
    print('Lions are running fast ..');
  }

  @override
  sleep() {
    print('Lions sleeps 18 hours a day ..');
  }

  // the method drink does not need to override coz it's concrete method
}
