class Students {
  // Dart OOP
  // 1- Encapsulation

  // note: every class contains two main things
  // 1- Attributes || fields || instance variable || class data || class state --> **state in flutter
  // note: we didn't assign the rules of oop
  // first rule -> data encapsulation making variable private using _
  String? _name;
  // int? age;
  // let's make it private
  int? _age;

  // note: we cannot add conditions in the class but we can inside the method
  // if(age >= 10)

  /// Getters and Setters Special Methods

  // 1- Setter
  // void setAge(int value) {
  //   // this._age = value; // or
  //   if (value >= 10)
  //     _age = value; // coz the names are different
  //   else // if the clint enter a wrong input we will show the error in user friendly way using throw
  //     throw Exception('Student\'s age must be grater than or equal to 10');
  // }

  void set age(int value) {
    if (value >= 10)
      this._age = value;
    else
      throw Exception('Student\'s age must be grater than or equal to 10');
  }

  // 2- Getter
  // int getAge() {
  //   return _age!;
  // }

  int get age {
    return _age!;
  }

  // now we will create a setter and getter for the name
  void set name(String name) {
    if (name.length >= 4)
      this._name = name;
    else
      throw Exception('Name must be more than 3 letters');
  }

  String get name {
    return _name!;
  }

  // 2- Methods || behaviors || actions || jobs || functions
  void info() {
    // print('Student name = $name, and age = $age');
    print('Student name = $_name, and age = $_age');
  }
}
