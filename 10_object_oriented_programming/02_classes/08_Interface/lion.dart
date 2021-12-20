import 'animal.dart';
import 'a.dart';

// there is no interface in dart and
// there is no Multiple Inheritance in dart
// ex
// Interface lion extends Animal {}    X
// class Lion extends Animal, A {}     X
// class Lion extends Animal {
class Lion implements Animal, A {
  // we can implement more than one class
  // now the class Animal become interface when we used implements
  // and we must override , implementing all the missing methods
  // and members (data, attributes, variables, ...) in the Animal

  /**
   * -abstract 
   * in abstract not all the members are must to override
   * and we can extends only one class
   * 
   * -interface -> implements
   * but with interface -> implements all members are must to override
   * we can extends more than one class
   */

  @override
  int? speed;

  @override
  void eat() {
    print('Lions eats meat...');
  }

  @override
  void move() {
    speed = 100;
    print('Lions are moving speed: $speed');
  }

  @override
  void sleep() {
    print('Lions now sleeping');
  }

  @override
  void test() {
    print('Test test');
  }
}
