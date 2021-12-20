///
/// Maps and also known as Dictionary
///
void main() {
  /// In general, a Map is an Object that associates Keys and Values.
  /// Both keys and values can be any type of object.
  /// Each key -> occurs only once, but
  /// you can use the same value -> multiple times.
  /// Dart support for maps is provided by map literals and the Map type.
  ///
  /// ---

  // Here are a couple of simple Dart maps, created using map literals:
  var gifts = {
    // Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };
  print("${gifts}\n");

  var nobleGases = {
    2: "helium",
    10: "neon",
    18: "argon",
  };
  print("${nobleGases}\n");

  // Note: Dart infers that
  // gifts has the type Map<String, String>
  // and nobleGases has the type Map<int, String>.
  //
  // If you try to add the wrong type of value to either map,
  // the analyzer or runtime raises an error.
  // For more information, read about type inference.

  // --------------
  print('-' * 20);
  print('');

  // You can create the same objects using a Map constructor
  var gift = Map<String, String>();
  gift["first"] = "partridge";
  gift["second"] = "turtledoves";
  gift["fifth"] = "golden rings";
  print("${gift}\n");

  Map<int, String> noble_gases = new Map<int, String>();
  noble_gases[2] = 'helium';
  noble_gases[10] = 'neon';
  noble_gases[18] = 'argon';
  print('${noble_gases}\n');

  // Note: If you come from a language like C# or Java,
  // you might expect to see new Map() instead of just Map().
  // In Dart, the 'new' keyword is optional.
  // For details, see Using constructors.

  // --------------
  print('-' * 20);
  print('');

  // Add a new key-value pair to an existing map just as you would in JavaScript:
  gift['fourth'] = 'calling birds'; // Add a key-value pair
  print("${gift}\n");

  // Retrieve a value from a map the same way you would in JavaScript:
  assert(gift['first'] == 'partridge');
  print("${gift}\n");

  // If you look for a key that isn’t in a map, you get a null in return:
  assert(gift['fifth'] == null);
  print('${gift}\n');

  // Use .length to get the number of key-value pairs in the map:
  print(gift.length);
  // assert(gift.length == 2);  what the hell assert is

  // To create a map that’s a compile-time constant,
  // add const before the map literal:
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(constantMap);
  // constantMap[2] = 'Helium'; // This line will cause an error.

  // --------------
  print('-' * 20);
  print('');

  // Maps support spread
  // operators (... and ...?)
  // and
  // collection if and for,
  // just like lists do.

  // --------------
  print('-' * 20);
  print('');

  // Map<dynamic, dynamic> 
  Map dy = {1.9: "HH", 1: 332};
  print(dy);
}
