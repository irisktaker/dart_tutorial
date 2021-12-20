
// the main function is the starts of the application
void main() {
  // 1
  // method without parameter
  info();

  // 2
  // specific parameter
  myNumber(7);
  int x = 77;
  myNumber(x);

  // 3
  // dynamic parameter
  dynPara(10);
  dynPara(10.00);
  dynPara('hello');
  dynPara(true);

  // 4
  // return method
  int sumI = sumInt(8, 3);
  print(sumI);
}

// 1
// simple function (method)
// void type
info() {
  print('Hi i am the info function'
      'you can call me form the main function');
}

// 2
// function (method) with a [parameters]
// parameters: anything we pass through the functions
// int type
myNumber(int number) {
  print('My number is $number');
}

// 3
// dynamic parameter
// void dynamic type
dynPara(data) {
  print('You print $data');
}

// 4
// return method
// int type
int sumInt(int x, int y) {
  return x + y;
}
