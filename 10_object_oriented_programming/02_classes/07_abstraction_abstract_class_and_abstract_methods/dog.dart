import 'animal.dart';

class Dog extends Animal {
  @override
  eat() {
    print('Dogs eat\'s meat ..');
  }

  @override
  move() {
    print('How fast are the dog\'s !');
  }

  @override
  sleep() {
    print('Dog sleeps on the sofa ..');
  }

  // the method drink does not need to override coz it's concrete method
}
