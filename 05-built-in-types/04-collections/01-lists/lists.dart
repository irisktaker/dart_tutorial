void main() {
  List<int> list1 = [4, 5, 6, 7, 8, 9];
  print(list1);
  print(list1[0]);
  print(list1[4]);

  //  ---
  print('-' * 20);
  //  ---

  print(list1.first);
  print(list1.last);
  print(list1.reversed);

  //  ---
  print('-' * 20);
  //  ---

  list1[1] = 1;
  print(list1);

  //  ---
  print('-' * 20);
  //  ---

  // add
  list1.add(10);
  print(list1);
  list1.addAll([3, 7, 8]);
  print(list1);

  // insert
  // (int index , int element)
  list1.insert(0, 8);
  print(list1);
  // iterable == متوقع
  // (int index , Iterable<int> iterable)
  list1.insertAll(0, [3, 7, 8]);
  print(list1);

  // remove
  // remove value of
  list1.remove(9);
  print(list1);
  // remove index num
  list1.removeAt(0);
  print(list1);
  list1.removeLast();
  print(list1);
  // remove from index start to index ends - 1
  // ex: (0,5) it will remove from index 0 to 5-1 (4)
  list1.removeRange(0, 5);
  print(list1);

  // replace
  list1.replaceRange(0, 2, [2, 3, 4]);
  print(list1);

  //  ---
  print('');
  print('=' * 20);
  print('');
  //  ---

  // -- for loop
  print('for loops');
  var list2 = [4, 5, 6, 7, 8, 9];
  print(list2);
  print(list2[0]);
  print(list2[1]);
  print(list2[2]);
  print(list2[3]);
  print(list2[4]);
  print(list2[5]);

  print('-' * 20);

  for (int i = 0; i < list2.length; i++) {
    print(list2[i]);
  }

  print('-' * 20);

  for (int i in list2) {
    // i value = 4 , i value = 5 , ...
    print(i);
  }

  print('-' * 20);

  // forEach element of the list2
  // works as for (int i in list2)
  list2.forEach((element) {
    print(element);
  });

  print('-' * 20);

  //  ---
  print('');
  print('=' * 20);
  print('');
  //  ---

  var list3 = [3, 4, 5, 12, 322, 38];
  print(list3.indexOf(322));
}
