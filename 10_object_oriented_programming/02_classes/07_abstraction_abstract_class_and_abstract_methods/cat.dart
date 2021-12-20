import 'animal.dart';

class Cat extends Animal {
  @override
  eat() {
    print('Does cat\'s eats fish ?');
  }

  @override
  move() {
    print('Cat\'s moving a lot they\'re always playing ..');
  }

  @override
  sleep() {
    print('How many hours does the cat sleep ?');
  }

  // the method drink does not need to override coz it's concrete method
}
