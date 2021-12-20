/** 
 *  Classes Lion ,fish, cat, dog
 *  must contain the following methods: eat() , move() , sleep() , drink()
 *  we need to create the main data in class Animal then other classes inheritance from it
 * 
 */

// abstract class
// the main purpose of the Animal abstract class is to inherit properties to another classes
abstract class Animal {
  // eat();  // --> abstract method (method without a body)
  // every abstract method must be inside a class of type abstract
  // eat() {
  //   // concrete method
  //   // method with body
  // }

  // creates abstract methods
  // then we will override them to each animal
  // here we hide the details but we creates methods in general
  eat();
  move();
  sleep();

  // concrete method || non abstract methods
  // we do not need to edit it later (override)
  drink() {}
}
