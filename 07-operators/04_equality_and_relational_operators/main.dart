// Equality and relational operators

// The following table lists the meanings of equality and relational operators.
// Operator 	Meaning
// == 	Equal; see discussion below
// != 	Not equal
// > 	Greater than
// < 	Less than
// >= 	Greater than or equal to
// <= 	Less than or equal to

// To test whether two objects x and y represent the same thing, use the == operator. (In the rare case where you need to know whether two objects are the exact same object, use the identical() function instead.) Here’s how the == operator works:

//     If x or y is null, return true if both are null, and false if only one is null.

//     Return the result of invoking the == method on x with the argument y. (That’s right, operators such as == are methods that are invoked on their first operand. For details, see Operators.)

// Here’s an example of using each of the equality and relational operators:

void main(List<String> args) {
  assert(2 == 2); // true
  assert(2 != 3); // true
  assert(3 > 2); // true
  assert(2 < 3); // true
  assert(3 >= 3); // true
  assert(2 <= 3); // true

  // objects
  Student s1 = new Student(1, 'naser');
  Student s2 = new Student(1, 'naser');
  print(s1 == s2); // false ?? Why
  // we will talk about == operator overriding
}

class Student {
  int? id;
  String? name;

  Student(this.id, this.name);
}
