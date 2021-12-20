import 'animal.dart';

class Fish extends Animal {
  @override
  eat() {
    // now we will add the - logic = details for each method
    print('Fish eats herbs ..');
  }

  @override
  move() {
    print('Fish is swimming fast in the water ..');
  }

  @override
  sleep() {
    print('Fish sleeps 1 hour a day ..');
  }

  // the method drink does not need to override coz it's concrete method
  @override
  drink() {
    print("Does fish drinks water?");
  }
}
