// Conditional expressions

// Dart has two operators that let you concisely evaluate expressions that might otherwise require if-else statements:

// condition ? expr1 : expr2
//     If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
// expr1 ?? expr2
//     If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.

// When you need to assign a value based on a boolean expression, consider using ? and :.

void main() {
  bool isPublic = !true;
  var visibility = isPublic ? 'public' : 'private';
  // If the boolean expression tests for null, consider using ??.
  print(visibility);

  print(playerName('name'));
  print(playerName1('Guest'));
  print(playerName2('Guest'));
}

// methods
// if name (?? means if null) return 'Guest'
// return name
// if null
// return 'Guest'
String playerName(String? name) => name ?? 'Guest';
// The previous example could have been written at least two other ways, but not as succinctly:

// Slightly longer version uses ?: operator.
String playerName1(String? name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName2(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}
