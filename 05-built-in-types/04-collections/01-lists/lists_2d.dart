void main() {
  List list_2d = [
    [5, 6, 9], // row #0 -- column #0 | #1 | #2 |
    [4, 3, 1], // row #1 -- column #0 | #1 | #2 |
  ];

  //  row [] - column []  ([][])
  print(list_2d[1][1]);
  print(list_2d);

  print(list_2d.length);

  // we can use nested for statement
  for (int i = 0; i < list_2d.length; i++) {
    for (int j = 0; j < list_2d.length + 1; j++) {
      print(list_2d[i][j]);
    }
  }

  print('-' * 20);

  for (var i in list_2d) {
    print(i);
  }

  print('-' * 20);

  List list = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [2, 3, 5],
  ];
  print(list[3][1]);
  print(list);

  print(list.length);
}
