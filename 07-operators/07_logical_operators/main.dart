// Logical operators

// You can invert or combine boolean expressions using the logical operators.
// Operator 	Meaning
// !expr 	inverts the following expression (changes false to true, and vice versa)
// || 	logical OR
// && 	logical AND

// Here’s an example of using the logical operators:

void main() {
  //      true  &&  false = fasle
  print(6 <= 10 && 5 > 6);
  //      true  &&  true  = true
  print('Hi' == 'Hi' && true != false);

  //      true  ||  false = true
  print(6 <= 10 || 5 > 6);
  //        (false        &&  true) = (false || false) = false
  print('object' != 'object' && 9 < 10 || 6 == 4);

  var x = 5;
  // !
  //    (!(true || true)= coz of ! it will return false)
  print(!(x > 3 || 3 == 3));
  // !true
  print(!true);
}
