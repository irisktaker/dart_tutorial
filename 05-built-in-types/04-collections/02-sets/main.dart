void main() {
  // Set
  // A set in Dart is an unordered collection of unique items.
  // Dart support for sets is provided by set literals and the Set type.

  // Here is a simple Dart set, created using a set literal:
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print('${halogens} \n');
  // Set<String>  // or use <--

  // To create an empty set, use {} preceded by a type argument,
  // or assign {} to a variable of type Set:
  var createsSet = <String>{};
  Set<String> createsSet2 = {}; // This works, too.
  var createsMap = {}; // Creates a map, not a set.
  print(createsSet);
  print(createsSet2.add('PHP'));
  print(createsMap);

  // Note:
  // Set or map? The syntax for map literals is similar
  // to that for set literals.
  // Because map literals came first, {} defaults to the Map type.
  // If you forget the type annotation on {} or the variable it’s assigned to,
  // then Dart creates an object of type Map<dynamic, dynamic>.

  // Add items to an existing set using the add() or addAll() methods:
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  // Use .length to get the number of items in the set:
  var items = <String>{};
  items.add('fluorine');
  items.addAll(halogens);
  assert(items.length == 5);

  // To create a set that’s a compile-time constant,
  // add const before the set literal:
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.
  print(constantSet);

  // Sets support spread operators (... and ...?) and
  // collection if and for, just like lists do.
  Set<String> names = {'John', 'Jeff', 'Elon', ...constantSet};
  print(names);
  Set<String>? nullSet;
  Set<String> numberText = {"One", "Two", "Three", ...?nullSet};
  print(numberText);

  // for loop
  Set<dynamic> setForLoop = {'X', 'M', for (var name in names) "$name"};
  print(setForLoop);
}
