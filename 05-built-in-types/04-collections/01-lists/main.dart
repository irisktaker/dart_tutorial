void main() {
  /// Collections
  /// one name of students -> String name = 'name';
  /// if we need to assign 1000 or more of students names
  /// so what we will do
  /// we can do it with the collections --> (list , set , map) allow as
  /// to assign more than one data (like names , numbers, photos, etc...)
  ///                                               ___
  /// String name; will take a place in the memory [___] -> name
  ///
  /// List    a group of places in the memory
  ///       ___  index #
  ///      |---| 0
  ///      |---| 1  the value of the data may be dynamic (it's weak data-type) or
  ///      |---| 2  we can assign a specific data-type like -> List<int>
  ///      |___| 3
  ///

  List<dynamic> data = ['Names', 12, true];
  print(data);

  List<String> students = ['Sara','Me', 'Yo', 'Mary'];
  print(students);
  print(students[1]);

  /// Dart 2.3 introduced
  /// the spread operator (...)
  /// and the null-aware spread operator (...?),
  /// which provide a concise way to insert multiple values into a collection.
  final List finalList = const [50, 60];
  const List constList = const [70, 80];
  List list = const [90, 100];
  const List cList = [110, 120];

  print('$finalList + $constList + $list + $cList');

  List listOne = [1, 2, 3];
  // var listTwo;
  List? listTwo;

  // For example, you can use the spread operator (...)
  // to insert all the values of a list into another list:
  List listThree = [...listOne, 8, 30, 88];
  print(listThree);

  // If the expression to the right of the spread operator might be null,
  // you can avoid exceptions by using a null-aware spread operator (...?):
  List listFour = [...?listTwo, 2, 13];
  print(listFour);

  // Dart also offers collection if and collection for,
  // which you can use to build collections
  // using conditionals (if) and repetition (for).
  //
  // Here’s an example of using collection
  // if to create a list with three or four items in it:

  bool promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  List<String> nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Here’s an example of using collection for
  // to manipulate the items of a list before adding them to another list:
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}
