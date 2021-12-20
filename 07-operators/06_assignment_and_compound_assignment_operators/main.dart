// Assignment and Compound assignment operators

// As you’ve already seen, you can assign values using the = operator.
//To assign only if the assigned-to variable is null, use the ??= operator.

void main() {
  var x;
  x ??= 3; // if x equal null so give it the value of 3

  var y = 10;
  // y ??= 8; // : Warning: Operand of null-aware operation '??=' has type 'int' which excludes null.

}
