/**
 *  Dart Programming 
 * 
 *  Dart OOP
 *  1- Encapsulation
 *  2- Abstraction --> some programmers says it's not from oop 
 *  3- Inheritance 
 *  4- Polymorphism
 */
import 'students.dart';

void main() {
  // Dart OOP
  // 1- Encapsulation
  Students s1 = new Students();
  s1.name = 'Naser';
  // for example the clint assign a minus data for the age in wrong
  // and it's wrong
  // s1.age = -27; // we can assign data in -(minus) for example, without using the **[encapsulation]
  // s1._age = 23;
  s1.age = 27;
  s1.info(); // here now we cannot access the age

  // using the setter method
  // first way
  // s1.setAge(12); // now we need to read and print the data using the getter method
  // s1.setAge(-12); // Unhandled exception:
  // Exception: Student's age must be grater than or equal to 10
  // print(s1.getAge());

  // second way
  s1.age = 12;
  print(s1.age);
  s1.name = 'Naser';
  print(s1.name);
}
