class Person {
  // attributes = class data
  // encapsulation = data hiding

  String? _name;
  int? _age;

  // method
  // getter and setter
  void set name(String name) => this._name = name;
  String get name => this._name = name;

  void set age(int age) => this._age = age;
  int get age => this._age = age;

  // return dynamic method
  info() {
    return ('Name is: ${_name}, age is: ${_age}');
  }
}
