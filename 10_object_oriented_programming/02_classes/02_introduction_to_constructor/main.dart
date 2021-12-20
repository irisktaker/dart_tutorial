/**                       [Dart Programming]
 *  
 *    class                                       objects
 *  - blueprint for creating objects              - instance from the class 
 *  - encapsulates data for the object            
 * 
 *  Declaring a Class                             Declaring object 
 *  class ClassName {                            ClassName objectName = new ClassName();
 *    <filed>                                     
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

// constructor
// instantiation (create object)

void main() {
  // Students s1 = Students(); // (); these means default constructor
  // creates in the class in default Students(){}

  // s1.name = 'Steve';
  // s1.age = 20;
  // print('Name: ${s1.name} age: ${s1.age}');

  // what if we have 100 data - variables ???
  // s1. .. s1. .. s1. .. s1. .. s1. .. s1. .. s1. .. s1. .. s1. ..

  Students s1 = Students('John', 22);

  s1.displayInfo();
}

class Students {
  // fields
  String? name;
  int? age;

  // Constructor
  // creates in the class in default Students(){}
  /**
   * Students() {
    print(
        'Object has ben created'); // it runs without calling the object like s1. ...
    // runs automatically

    // what is the job of constructor and what is the benefit of it
  }
  */

  /**
    Students(String name, int a) {
      // name = name; // name return to what?? the ide will not know like this
      // so we need to use [this] to let it know or use another name like [age and a]
      this.name = name; // see the different of the color of name
      age = a; // but it's not clean code
     }  
   */

  // instead of the code above we can use simply as
  Students(this.name, this.age); // just >_-

  void displayInfo() {
    // print('Name: ${s1.name} age: ${s1.age}');
    print('Name: ${name} age: ${age}');
  }
}
