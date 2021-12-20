
// Operators 
// 2- Unary Operators  
//  A- Increment++                        B- Decrement--
//   prefix          postfix              -prefix         postfix 
//      ++variable      variable++          --variable      variable--

// Dart also supports both prefix and postfix increment and decrement operators.
// Operator 	Meaning
// ++var 	var = var + 1 (expression value is var + 1)
// var++ 	var = var + 1 (expression value is var)
// --var 	var = var – 1 (expression value is var – 1)
// var-- 	var = var – 1 (expression value is var)

void main() {

  int num1 = 5;
  print(num1);
  int num2 = num1++; // num2 = num1 --> num2 = 5 then num2(5) ++ (+1) now num2 = 5+1=6
  print(num2);
  print(++num2);
  int num3 = ++num2; // num3 = ++(+1) and then num2(6) now num3 = 1+6=7 
  print(num3);
}

