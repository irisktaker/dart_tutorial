// https://dev.to/iizmotabar/exploring-dart-collection-types-part-1-lists-3ocj

/**
 * List: 
 * List, also known as an Array in some languages is simply is an ordered collection of objects which has a length. 
 * The list can be iterated through indices, starting off with the zero index and ending at length-1. 
 * To define a list in Dart, we enclose its elements with square brackets []. Let’s see that in code:
 */

void main() {
  // #1
  List listOfFruits = ['Apple', 'Orange', 'Banana', 'Strawberry', 'Pineapple'];
  // To print the list as a whole, we can do:
  print(listOfFruits); //Returns the whole list of fruits

  // We can also have a list having elements of different types.
  List listOfDifferentTypes = ['Bag', 1, 4, 'Mouse', 3.14];

  //Lets say we want to print some specific element from the list. For that, we can make use of the index as such:
  print(listOfDifferentTypes.last);
  print(listOfDifferentTypes[
      0]); //Returns 'Bag'as its the first element in the list.

  // #2
  // If we want our List to be of specific types,
  // we can restrict the element types using the angle brackets<> as such:

  // The list will only contain the elements of Integer type.
  List<int> listOfIntegers = [1, 2, 4, 5, 6, 7];

  // The list is restricted to only elements of boolean type.
  List<bool> listOfBoolean = [false, false, false, true];

  // We can also have a list of elements having different types by setting
  // its type to dynamic as such
  List<dynamic> listOfDynamic = ["String", 12, 1.618, true];

  // We can still use the indices to get a specific element from the list
  print(listOfIntegers[3]); //Returns '5'

  // To get last element from the list we can use the length method,
  // and then subtract 1 from it as follows:
  print(listOfDynamic[listOfDynamic.length - 1]);

  // #3
  // Now let’s get to the interesting part,
  // We can not only create lists and iterate through them to get the element we want
  // but we can also perform operations on it. Dart Lists offers a bunch of functions.
  // Let’s go through them one by one:

  // #3.1
  // reversed():
  // Let’s start things off with the reverse() method.
  // I remember, when I started learning Programming with an OG language like C,
  // how complex it was just to reverse a list or an Array as I should say.
  // Dart makes the process so much easier with its reverse() method.
  // You just call it on a List and it returns a reversed version back to you.
  // That simple. Let’s have a look at the code:

  // Declaring a list of integers
  List<int> listOfIntegers2 = [1, 2, 4, 5, 6, 7, 8, 9];
  // Reversing the list and storing it in a variable
  var reversedList = listOfIntegers2.reversed;
  // Let's print the reversed String
  print(reversedList); //returns [9,8,7,6,5,4,3,2,1]

  // #3.2
  // shuffle():
  // The shuffle method like the name tells, shuffles a given list.
  // The method takes an optional parameter where you can define how you want to shuffle the list.
  // Bear in mind, since the Shuffle method does not returns anything,
  // It manipulates the original List on which it is being called on.
  // Let’s see the shuffle() method in action:

  // Declaring a list of Strings
  List<String> listOfNames = ['John', 'Maisie', 'Barack', 'Bob'];
  // Shuffles the listOfNames List
  listOfNames.shuffle();
  print(listOfNames); // prints a new shuffled list everytime it is called

  // #3.3
  // subList():
  // The subList() method returns a new list SubList from the List of elements on which it is called on.
  // The subList() method takes in two parameters: start and end.
  // The sublist contains elements starting from start (inclusive)
  // and ends at ending index with that index being exclusive.
  // Let’s dive into the code to see its magic:
  List footballClubs = [
    "FC Barcelona",
    'Real Madrid',
    "Bayern Munich",
    "PSG",
    "Manchester City",
    "Juventus"
  ];
  // Returns the elements between from 0 index(including 0 index) to 3 (excluding element at index 3)
  footballClubs.sublist(0, 3);
  print(footballClubs);
  print(footballClubs.sublist(0, 3));

  // #3.4
  // asMap():
  // asMap() returns the Map(A key-value pair representation of data) - representation of the given String.
  // In that Map, the indices serve as the keys and the values are the corresponding elements of the List.
  // We can further call the getter methods on
  // asMap().keys if we just want to get the keys or
  // asMap().values if we want to only get the values.
  // Let’s have a look at the method in code:

  //If we want the whole map to be printed, we just call the asMap() function
  print(footballClubs
      .asMap()); //prints the whole Map as: {0: FC Barcelona, 1: Real Madrid, 2: Bayern Munich, 3: PSG, 4: Manchester City, 5: Juventus}

  //To get just the keys or just the values,we call the corresponding getter as:
  print(footballClubs
      .asMap()
      .keys); //returns just the keys as: (0, 1, 2, 3, 4, 5)
  print(footballClubs
      .asMap()
      .values); //returns just the values as:  (FC Barcelona, Real Madrid, Bayern Munich, PSG, Manchester City, Juventus)

  // #3.5
  // fold():
  // The return value of fold() function is a single value.
  // The value is determined by the function which is being performed with the fold() function.
  // For instance, It can be used to get a sum of elements in a list as:
  List<int> listOfNum = [2, 4, 6];
  int result =
      //              initialValue 5 ,  [list]
      listOfNum.fold(5, (previousValue, element) => previousValue + element);

  print('Resultant value is: ${result}'); // return 17
  /**
   * Fold takes two parameters, the initialValue and a function. In this example, 
   * we iterate through the list with 5 being the initialValue and add up list elements into the initialValue so that:

    In the first iteration, the element at Index 0 is 2, so 5+2 = 7 which now the new value of i.
    In the second iteration i+j, 7+4 = 11 =i;
    In the third of i+j, 11+6= 17 and there is no more element left in the list so the function evaluation completes and it returns 17.
   */

  // #3.6
  // isEmpty() & isNotEmpty():
  // isEmpty() and isNotEmpty() are two very important functions on Dart Lists which as their name suggests checks if a List is Empty or if a List is not empty respectively.

  // isEmpty(): It returns true is the list is empty and false otherwise.
  // isNotEmpty(): In case of isNotEmpty(), the situation is other way round, where is returns true in case of list having some elements and false otherwise.
  List<int> listOfNum2 = [];
  List<int> anEmptyList = [2, 4, 6, 8, 10];

  listOfNum2.isEmpty
      ? print("A lie!")
      : print("A nobel man indeed."); //prints 'A lie!
  if (anEmptyList.isNotEmpty) {
    print("I am a joke to you"); //prints 'Am I a joke to you?
  } else {
    print("I see a man of virtue");
  }

  // #3.7
  // add():
  // add() is the method that is used to add elements into the list.
  // It takes in the element as a parameter and adds it up into the list on which it is called on as:
  List<int> listOfNum3 = [];
  listOfNum3.add(1); //adds 1 to the empty listOfNumber List
  listOfNum3.add(2); //adds 2 so the list becomes [1,2]
  listOfNum3.add(3); //adds 3 so the list becomes [1,2,3]
  listOfNum3.add(4); //adds 4, list becomes [1,2,3,4]
  listOfNum3.add(5); //list is now [1,2,3,4,5]

  print(listOfNum3); //prints [1,2,3,4,5]

  // #3.8
  // reduce():
  // reduce() method works pretty much the same as the fold method.
  // The only difference between the two is that fold() method has an initial value while the reduce method does not.
  // Let’s see that in code:
  List<int> listOfNum4 = [1, 2, 3, 4, 5];
  // We call reduce on the listOfNumbers list and call fold, which multiplies
  // the elements within the list one by one and return a single value
  var returnValue = listOfNum4.reduce((value, element) => value * element);
  print(returnValue); // returns 120 as (1*2)*(2*3)*(6*4)*(24*5) = 120

  // #3.9
  // any():
  // any() is the method that takes in a function as a parameter and based on that function returns a boolean in the form or a true or a false.
  // Let’s suppose we want to check if the list contain any negative number.
  // We can use any() in that case as:
  List<int> listOfNum5 = [1, 2, 3, 4, 5];
  // Checking if there is any negative number in the list at any index
  var returnIsNegative = listOfNum5.any((element) => element.isNegative);
  var returnIsEven = listOfNum5.any((element) => element.isEven);
  var returnIsFinite = listOfNum5.any((element) => element.isFinite);
  print(
      returnIsNegative); // prints false as there is no negative number in the list
  print(returnIsEven);
  print(returnIsFinite);

  // #3.10
  // every():
  // every() works pretty much the same as any.
  // The only difference is that any evaluates to a boolean value if even a element satisfies the condition but in case of every(),
  // every element in the list has to satisfy the condition. Let’s see that in code:
  List<int> listOfNum6 = [1, 2, 3, 4, 5];
  //Checking if every element of the list is an even number
  var returnIsEvery = listOfNum6.every((element) => element.isEven);
  print(
      returnIsEvery); // prints false as there are odd numbers in the list as well.

  // #3.11
  // getRange():
  // As the name suggests, the getRange method returns elements from the list which lie in the specific range.
  // The range function takes in two parameters: start and end where start is inclusive and end is exclusive.
  // Since the range function returns an iterable, we call toList() to typeCast the Iterable to a List as follows:
  List<String> listOfColors = [
    'Red',
    'Green',
    'Blue',
    'Yellow',
    'Orange',
    'Violet',
    'Indigo',
    'Black'
  ];
  // getRange will only get the elements from index 1(including element at that index) to index 4 (while excluding element at index 4)
  print(listOfColors
      .getRange(1, 4)
      .toList()); // prints a list of [Green, Blue, Yellow]

  // #3.12
  // replaceRange():
  // Need help updating an element within a specific range? The replaceRange() method got you covered.
  // The method takes in 3 parameters, 2 of which are just like getRange() where its the start
  // and end point of range while the third being the value that is to be replaced in the place of the desired element.
  // The element that lies between the two ranges gets replaced.
  // If there is no element within the two ranges, the element at start gets replaced. Let’s see that in an example as:
  List<String> listOfColor = [
    'Red',
    'Green',
    'Blue',
    'Yellow',
    'Orange',
    'Violet',
    'Indigo',
    'Black'
  ];
  // replace the element between range(3,4) with purple, and that is Yellow in this case so, yellow is replaced with Purple
  listOfColor.replaceRange(3, 4, ['Purple']);
  print(
      listOfColor); // prints [Red, Green, Blue, Purple, Orange, Violet, Indigo, Black]

  // #3.13
  // firstWhere():
  // firstWhere() is the method that takes in a function as a parameter and returns the first element where the condition is satisfied as:
  print(listOfColors.firstWhere((element) => element
      .contains('ang'))); // //prints Orange as it satisfies the condition

  // #3.14
  // first() & last():
  // Like the name speaks for itself, the first() method is used to get
  // the first element from the list and the last() method returns the last element from the list. Let’s see that in code:
  //Returns the first element from the list
  print(listOfColors.first);
  //returns the last element from the list
  print(listOfColors.last);

  
}
