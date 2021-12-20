import 'animal.dart';
import 'fish.dart';
import 'lion.dart';
import 'cat.dart';

/**
 *  Polymorphism
 */

void main() {
  // ERROR: Abstract classes can't be instantiated.
  // Animal animal1 = Animal();

  // Polymorphism type
  Animal animal = new Lion();
  animal.eat(); // now the animal is have polymorphism of Lion class
  animal = new Fish();
  animal.eat(); // now the animal is have polymorphism of Fish class
  // animal = new Cat(); cat does not [extends] polymorphism from any class
  animal.eat();

  print('----------------');

  var x = Lion();
  var y = Fish();
  doEat(x);
  doEat(y);
}

void doEat(Animal animal) {
  animal.eat();
}
