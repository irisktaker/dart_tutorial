// Dart inheritance with constructor and overriding toString method

import 'manager.dart';
import 'person.dart';

/**                    in the memory
   *                         class - blueprint 
   *                        |-----|    
   *                        |_____|      
   *                            -[N] -> new (it's like a person who hold the class Person and draw then build everything from constructor)
   *   a place in m   |-------|   |-------| --> two attributes
   *   variable -->   |  (v)  |   | [N]   | --> object
   *   name(0x01)->   |  (n)  |   |       |       |__ >> have a name and id in our example -- attributes.. name and attributes . id
   *                  |  ...  |   | (01). |       |__ >> have a location in the memory and it's name for ex: 0x01
   *                  |_______|   |_______|   
   *                    stack       heap
   *                                          repeat the same for each object 
   */

void main() {
  var p1 = new Person('Steve'); // () -> for constructor
  // print(p1.info());
  print(p1.toString());

  var m1 = new Manager('Naser');
  // print(m1.info());
  print(m1.toString());
}
