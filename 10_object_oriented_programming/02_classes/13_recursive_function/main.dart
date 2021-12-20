void main() {
  //Dart Recursive function (method)
  //it means the method called itself more than one time

  for (int i = 0; i < 3; i++) print('Hello ${i}');

  print('-------------');

  sayHello(3);

  print('-------------');

  var fact = factorial(5);
  print('Factorial num = $fact');
}

int factorial(int num) {
  if (num <= 0)
    return 1;
  else
    return num * factorial(num - 1);
}

void sayHello(int i) {
  if (i >= 1) {
    print('Hello ${i}');
    sayHello(i - 1);
  }
  return;
}
