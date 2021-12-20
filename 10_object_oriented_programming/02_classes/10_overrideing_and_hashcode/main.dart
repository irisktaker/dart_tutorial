void main() {
  // Dart overriding  -- == -- hash code

  // create an objects
  Person p1 = new Person('Mohammed', 'Yousef');
  Person p2 = new Person('Mohammed', 'Yousef');
  // print(p1 ==
  //     p2); // will print false to fix this issue we must override the hash code and equality operator ==

  // equality operator ==
  // hash code --> is an integer // like an id for an objects
  // ex
  String n1 = 'Ali';
  print(n1.hashCode); // print 910781848
  String hashCodeOfE = 'E';
  String hashCodeOfB = 'B';
  String hashCodeOfD = 'D';
  print(
      '${hashCodeOfE.hashCode} + ${hashCodeOfB.hashCode} + ${hashCodeOfD.hashCode}');
  String hashCodeOfEBD = 'EBD';
  print('${hashCodeOfEBD.hashCode}');
  String hashCodeOfDEB = 'DEB';
  print('${hashCodeOfDEB.hashCode}');

  //
  // print(p1 == p2);
  print(p1.hashCode);
  print(p2.hashCode);
  print(p1 == p2);
}

class Person {
  // attributes
  String? firstName, lastName;
  Person(this.firstName, this.lastName);

  // override hash code
  @override
  int get hashCode {
    int result = 17;
    result = 37 * result + firstName.hashCode;
    result = 37 * result + lastName.hashCode;
    return result;
  }

  // overriding the equality operator ==
  // it will return boolean
  bool operator ==(dynamic other) {
    if (other != Person) return false;
    Person person = other;
    return (person.firstName == firstName && person.lastName == lastName);
  }
}
