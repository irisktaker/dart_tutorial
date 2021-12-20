class Human {
  /// Attributes => Variables = خصائص
  /// in the class we assign the general attributes
  /// in the object we give them values
  String? fName;
  String? lName;
  int? age;
  double? length;

  void printInfo() {
    print('First Name: ${fName}');
    print('Last Name: ${lName}');
    print('Age: ${age}');
    print('Length: ${length}');
  }
}

void main(List<String> args) {
  // object is a copy of the class
  // we give the objects values
  var h1 = new Human();
  h1.fName = 'Ahmad';
  h1.lName = 'Ali';
  h1.age = 20;
  h1.length = 1.71;
  // print('First Name: ${h1.fName}');
  // print('Last Name: ${h1.lName}');
  // print('Age: ${h1.age}');
  // print('Length: ${h1.length}');
  h1.printInfo();
  
}
