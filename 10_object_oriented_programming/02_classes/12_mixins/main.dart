/** 
 * 
 * Dart Mixins
 * something like extends - implementation - inheritance
 * to reuse the code
 * 
 */

void main() {
  // extends from Animal class
  print('Lion...');
  var l1 = new Lion();
  l1.eat();
  l1.drink();
  l1.walk();

  print('Duck...');
  var d1 = new Duck();
  d1.drink();
  d1.swim();
  d1.eat();
}

// mixin -> with mixin class name
class Lion extends Animal with Eat, Walk {
  // void eat() => print('Lion is eating..');
  // void walk() => print('Lion is walking..');
  // void drink() => print('Lion is drinking..');
}

// class Cat extends Animal, Fish --> in dart we cannot extends more than one class
// so we need another solution But not with interface coz it's need to override the methods
// so the best solution is to use the mixin
class Cat extends Animal {
  // void eat() => print('Cat is eating..');
  // void walk() => print('Cat is walking..');
  // void drink() => print('Cat is drinking..');
}

class Animal {
  // void eat() => print('Animal is eating..');
  // void walk() => print('Animal is walking..');
  void drink() => print('drinking..');
}

class Fish {
  // void swim() => print('Fish is swimming..');
}

class Duck extends Animal with Swim, Walk, Eat {}

mixin Eat {
  void eat() => print('eating..');
}

mixin Walk {
  void walk() => print('walking..');
}

mixin Swim {
  void swim() => print('swimming..');
}

mixin specialMixin on Cat{} // this mixin is only for the class cat and any extends from class cat only