import 'person.dart';

// Teacher class inheritance from Person class 
// subclass extends from super-parent class
class Teacher extends Person {
  // attributes = class data
  // encapsulation = data hiding

  String? _department;

  // method
  // getter and setter
  set department(String department) => this._department = department;
  String get department => this._department = department;

  // method overriding from return dynamic type method
  @override
  String info() { // super return to the super-parent class
    return super.info()! + ', department is: ${_department}';
  }
}
