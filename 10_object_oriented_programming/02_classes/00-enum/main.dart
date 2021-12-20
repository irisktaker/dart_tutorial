/// An enumeration is used for defining named constant values.
/// An enumerated type is declared using the enum keyword.
/**
 * 
 *  Enumerated types, often called enumerations or enums, 
 *  are a special kind of class used to represent a fixed number of constant values.
 *  
   * Syntax 
   *    
   *    enum enum_name {  
          enumeration list 
        }

        - The enum_name specifies the enumeration type name
        - The enumeration list is a comma-separated list of identifiers
   */

/// Each of the symbols in the enumeration list stands for an integer value,
/// one greater than the symbol that precedes it.
/// By default, the value of the first enumeration symbol is 0.
///
/// Example:

void main() {
  Status.values;
  print(Status.values);
  print('');
  // v -> for each value in the Status.values
  Status.values.forEach((v) {
    print('Value: $v , index: ${v.index}');
  });

  print('');

  print('running ${Status.running} , ${Status.running.index}');
  print('running index ${Status.values[1]}');

  print('');

  var sat = DaysOfWeek.Sa;
  print(sat);
  DaysOfWeek.values.forEach((element) {
    print('Value: $element , index: ${element.index}');
  });

  var red = Color.RED;
  print(red);
}

enum Status { none, running, stopped, paused }

enum DaysOfWeek { Su, Mo, Tu, We, Th, Fr, Sa }

enum Color { RED, GREEN, BLUE }
