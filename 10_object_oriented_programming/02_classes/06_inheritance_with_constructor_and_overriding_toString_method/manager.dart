/**
   *
   *                      in the memory
   *                         class - blueprint 
   *                        |-----|    
   *                        |_____|      
   *              -[N] -> new (it's like a person who hold the class Person and draw then build everything from constructor)
   *              now new of type Manager -> Manager extends from Person 
   *              so now we have a problem -> Creates Object of type Manager 
   *              then it will need to Creates Object of type Person
   *              The Person will ask Manager to give it the attribute name
   *              So we will need to assign name from Person to Manager
   *              --> Manager(String name) : super(name);
   *              if we have more attributes we need to do the same again
   * 
   *   a place in m   |-------|   |-------| --> two attributes
   *   variable -->   |  (v)  |   | [N]   | --> object
   *   name(0x01)->   |  (n)  |   |       |       |__ >> have a name and id in our example -- attributes.. name and attributes . id
   *                  |  ...  |   | (01). |       |__ >> have a location in the memory and it's name for ex: 0x01
   *                  |_______|   |_______|   
   *                    stack       heap
   *                                          repeat the same for each object 
   */

import 'person.dart';

class Manager extends Person {
  Manager(String name) : super(name);
}
