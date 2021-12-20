// ###
// ####
// #####

// Named Constructors, Redirecting constructors, and Constant Constructors

import 'immutable_point.dart';
import 'point.dart';

void main() {
  // create an object

  // 1- default constructor
  Teacher t1 = Teacher('Sami', 'Amman');
  t1.info();

  // 2- named constructor
  // Teacher t2 = Teacher.fromJson({'key1': 'value1', 'key2': 'value2'});
  Teacher t2 = Teacher.fromJson({'name': 'Sami', 'address': 'Amman'});
  t2.info();

  // 3- Initializer list
  Point p1 = new Point({'x': 3, 'y': 5});
  p1.info();
  // ex: 5
  // here we can change the value of x in the object p1 but we don't want to change this value so ??
  p1.x = 10; // mutable -> can be changed
  p1.info();

  // ---------------
  // we need to create constant constructor to make the variables immutable
  ImmutablePoint m1 = new ImmutablePoint(4, 3);
  const m2 = ImmutablePoint(6, 9);
  m1.info();
  // m1.x = 10; // now we cannot change the variable value
  m2.info();

  // ex: 4
  var p2 = Point.fromXAxis(4);
  p2.info();
} // ends of main method

class Teacher {
  // field = instance variable
  String? name;
  String? address;

  // 1- default constructor
  // syntactic sugar
  Teacher(this.name, this.address);

  // 2- named constructor -->> use to create more than one constructor in dart
  // Teacher.fromJson(String name, String address, int id);
  // Teacher.fromJson(this.name, this.address, int id);
  Teacher.fromJson(Map<String, String> json) {
    // return a Map
    this.name = json['name'];
    this.address = json['address'];
  }

  // method
  info() {
    print('name = ${name} address = $address');
  }
}
