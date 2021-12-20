void main() {
  /// A set in Dart is
  /// an unordered collection
  /// of unique items.
  ///
  /// We can't access the Set index
  /// until we change it to List

  Set<String> setOne = {"One", "Two", "Three", "Four", "Five"};
  print('Set of : $setOne');

  Set<dynamic> setTwo = {100, 'Million', true};
  print('Set of : $setTwo');

  Set<double> setThree = {1.0, 2.0, 3.1, 4.2};
  print("Set of : $setThree");
  // We can't access the Set index
  // print(setThree[0]);
  print(setThree.toList()[3]);

  // List setToList = setTwo;
  // we can't equal list to set
  // we should change set to list by adding .toList() method
  List setToList = setTwo.toList();
  print('Set to List : $setToList');

  // adds elements in the end of the set
  setTwo.add(910);
  print('I add 910 to the set: $setTwo');

  // A set in Dart is an unordered collection of unique items.
  setTwo.addAll({1, 888, 100, 912});
  // the value of 100 is already in the set
  // and it will not be printed coz of tne set is store unique values
  print('$setTwo');

  print(setTwo.length);
  // index #
  print(setTwo.elementAt(3));
  print(setTwo.contains('Million'));
  print(setTwo.remove(100)); // output is true?
  setTwo.remove(100);
  print('$setTwo');

  print(setThree);
  setThree.clear();
  print(setThree);

  setOne.forEach((element) {
    print(element);
  });

  setTwo.forEach((items) {
    print(items);
  });

  for (var i in setTwo) {
    print(i);
  }

  for (int i = 0; i < setOne.length; i++) {
    // print(setOne[i]);
  }

  /// Comparing between two groups
  /// - x.intersection(y)
  /// - x.union(y)
  /// - x.difference(y)
  /// - y.difference(x)
  ///

  Set<String> setFour = {'Hello', 'And', 'Welcome', 'One'};
  print(setOne.intersection(setFour));
  // setOne.union(setTwo);
  print(setOne.union(setFour));

  print(setOne.difference(setFour));
  print(setFour.difference(setOne));

  List<String> list = setFour.toList();
  print(list);
}
