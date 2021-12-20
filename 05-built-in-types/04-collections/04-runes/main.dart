/// Runes
/// The runes (integer unicode code points) of a String.
/// Unicode defines a unique numeric value for each letter, digit,
/// and symbol used in all of the world's writing system.
/// Because a Dart string is a sequence of UTF-16 code units,
/// expressing Unicode code points within a String requires special syntax.
///
/// String is list (array) of characters and it's a numbers for cp language 0 1

void main() {
  String myName = "Naser Sami";
  print(myName.codeUnits);
  print(myName.codeUnitAt(3));
  print('S'.codeUnits);

  print('');

  for (int c in myName.runes) {
    print('${String.fromCharCode(c)} : $c');
  }

  print('');

  /// Emojis unicode
  ///
  String face = '\u{1F639}';
  print('\u{1F60D} $face');
}
