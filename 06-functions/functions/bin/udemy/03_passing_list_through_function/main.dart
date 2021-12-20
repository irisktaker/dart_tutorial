/// passing_list_through_function
///
void main() {
  List a = ['Naser', 'Sami', 'Ebedo', 1, 10, 100, (100 * 100)];
  List b = ['Naser', 'Sami', 'Ebedo', 10, 100, 1000, (1000 * 1000)];

  forLoop(a);
  print('');
  forLoop(b);
}

/// type List name list
void forLoop(List list) {
  print('normal for loop ');
  for (var i = 0; i < list.length; i++) {
    print('Value is ${list[i]}');
  }

  print('');

  print('for value in ');
  for (var value in list) {
    print('Value is $value');
  }
}
