// import 'animal.dart';

import 'cat.dart';
import 'fish.dart';
import 'lion.dart';
import 'dog.dart';

/** 
 *    Dart Programming Language 
 *    
 *    Object Oriented Programming (OOP)
 *    
 *   -Encapsulation -Abstraction -Inheritance -Polymorphism
 * 
 *    
 *  Abstraction, abstract class and abstract methods:
 *  1). Abstract classes may or may not include abstract methods (methods without body).
 *  2). If a class has at least one abstract method, then the class must be declared abstract.
 *  3). An abstract class can not be instantiated, [but can be extended] ->(it's the man job for the abstract class). -> we cant create an object.
 *  4). If you inherit an abstract class, you have to provide implementations to all the abstract methods in it.
 *  5). An abstract class can be declared using abstract keyword.
 *  6). An abstract class may also have concrete (methods with body) method.
 *   
 */

/**
 *  We can use Abstraction with Abstract Class or with Interface (next lesson)
 *  
 */

void main() {
  // Animal a1 = new Animal(); // we can't create an Object from an abstract class
  // Abstract classes can't be instantiated.
  // the main purpose of the Animal abstract class is to inherit properties to another classes

  // Object for the Lion class
  var l1 = new Lion();
  l1.eat(); // abstract methods
  l1.move(); // abstract methods
  l1.sleep(); // abstract methods
  l1.drink(); // concrete method

  print('-' * 20);

  // Object for the Fish class
  Fish f1 = new Fish();
  f1.eat(); // abstract methods
  f1.move(); // abstract methods
  f1.sleep(); // abstract methods
  f1.drink(); // concrete method

  print('-' * 20);

  Cat c1 = new Cat();
  c1.eat();
  c1.move();
  c1.sleep();
  c1.drink();

  print('-' * 20);

  Dog d1 = new Dog();
  d1.eat();
  d1.move();
  d1.sleep();
  d1.drink();
}
