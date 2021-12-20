/**                                 [Dart Programming]
 *  
 *    class                                                 objects
 *  - blueprint for creating objects                        - instance from the class
 *  - encapsulates data for the object
 *
 *  Declaring a Class                                       Declaring object          // constructor
 *  class ClassName {                                       ClassName objectName = new ClassName();
 *    <Attributes, fields, instance variables, class data>
 *    <getters/setters>
 *    <constructors>
 *    <functions - methods>
 *  }        
 *  
 */

// we use Class as a STRUCTURE for the idea and we use Class to create an Object
// and we use Objects to access the ideas in the Class
// Objects are a copy of a class

/**                    in the memory
   *                         class - blueprint 
   *                        |-----|    
   *                        |_____|      
   * 
   *                  |-------|   |-------| --> two attributes
   *   variable -->   |  (v)  |   |  (o)  | --> object
   *   name(0x01)->   |  (n)  |   |       |       |__ >> have a name and id in our example -- attributes.. name and attributes . id
   *                  |  ...  |   | (02). |       |__ >> have a location in the memory and it's name for ex: 0x01
   *                  |_______|   |_______|   
   *                    stack       heap
   *                                          repeat the same for each object 
   */

void main(List<String> args) {
  // Create Objects from Class
  Student s1 = new Student();
  // now we have access to the variables - class data from the object
  s1.id = 1;
  s1.name = 'Jef';

  var s2 = new Student();
  s2.id = 2;
  s2.name = 'Tim';
  // s2.age = 55; // we don't have the age data in the class so we cannot create it

  // print('Student name: ${s1.name}. \nStudent id: ${s1.id}.\n'
  //     'Student name: ${s2.name}. \nStudent id: ${s2.id}.\n');

  s1.displayInfo(); // here this return to s1
  s2.displayInfo(); // here this return to s2
}

// Create Classes
class Student {
  /// each student is an object
  /// class members --> (fields - getters, setters - constructors - methods)
  /// Attributes = fields = instance variables = class data
  /// Let's create the Structure for the plan or idea for what we need for this class
  /// very simple example : we need the name and the id of each student
  String? name;
  int? id;

  // method
  void displayInfo() {
    // this => return to the current object - instance
    print('Student name: ${this.name}, Student id: ${this.id}');
  }
}
