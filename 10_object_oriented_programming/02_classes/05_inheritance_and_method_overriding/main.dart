import 'student.dart';
import 'teacher.dart';

/**
 * 
 *  Inheritance 
 *  1- Single Inheritance         : A --> B
 *  2- Multiple Inheritance       : A and B --> C       // not in dart
 *  3- Hierarchical Inheritance   : A & B & C --> D
 *  4- Multilevel Inheritance     : A --> B --> C
 *  5- Hybrid Inheritance         : A --> B & C --> D
 */

void main() {
  Student s1 = new Student();
  s1.age = 20;
  s1.name = 'Ahmad';
  print(s1.info());

  Teacher t1 = new Teacher();
  t1.age = 40;
  t1.name = 'Mohammad';
  t1.department = 'Arabic';
  print(t1.info());
}
