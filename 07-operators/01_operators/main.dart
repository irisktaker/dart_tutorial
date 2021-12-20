// Operators

// Dart supports the operators shown in the following table.
// You can implement many of these operators as class members.
//
// Description                                  	Operator
// _____________________________________________________________________________
//                            |
// unary postfix 	            |   expr++    expr--    ()    []    .    ?.
// unary prefix 	            |   -expr  !expr  ~expr  ++expr  --expr  await expr
// multiplicative 	          |   *    /    %  ~/
// additive 	                |   +    -
// shift 	                    |   <<    >>    >>>
// bitwise AND                |   &
// bitwise XOR 	              |   ^
// bitwise OR 	              |   |
// relational and type test   | 	>=    >    <=    <    as    is    is!
// equality 	                |   ==    !=
// logical AND 	              |   &&
// logical OR 	              |   ||
// if null 	                  |   ??
// conditional 	              |   expr1 ? expr2 : expr3
// cascade 	                  |   ..    ?..
// assignment 	              |   =    *=    /=   +=   -=   &=   ^=   etc.
// ___________________________|_________________________________________________

// When you use operators, you create expressions. Here are some examples of operator expressions:

void main() {
  var a = 1;
  var b = 2;
  var c = 4;
  // num T = a;

  a++;
  a + b;
  a = b;
  a == b;
  c == a ? a : b;
  // a is T;

  // In the operator table, each operator has higher precedence than the operators in the rows that follow it. 
  // For example, the multiplicative operator % has higher precedence than (and thus executes before) 
  // the equality operator ==, which has higher precedence than the logical AND operator &&. 
  // That precedence means that the following two lines of code execute the same way:

  num n = 10;
  num i = 1;
  num d = 2;
  // Parentheses improve readability.
  if ((n % i == 0) && (d % i == 0)) {
    print('true');
  }

  // Harder to read, but equivalent.
  if (n % i == 0 && d % i == 0) {
    print(false);
  }
}
