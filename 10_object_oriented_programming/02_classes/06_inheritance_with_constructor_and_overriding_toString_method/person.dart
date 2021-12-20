

/**                    in the memory
   *                         class - blueprint 
   *                        |-----|    
   *                        |_____|      
   *                           -[N] -> new (it's like a person who hold the class Person and draw then build everything from constructor)
   *   a place in m   |-------|   |-------| --> two attributes
   *   variable -->   |  (v)  |   | [N]   | --> object
   *   name(0x01)->   |  (n)  |   |       |       |__ >> have a name and id in our example -- attributes.. name and attributes . id
   *                  |  ...  |   | (01). |       |__ >> have a location in the memory and it's name for ex: 0x01
   *                  |_______|   |_______|   
   *                    stack       heap
   *                                          repeat the same for each object 
   */
  
class Person extends Object{ // every class in Dart extends from the Object class by default
  String? _name;
  Person(this._name);

  // return method
  // String info() {
  //   return 'Name = ${_name}';
  // }

  // override ready method toString() from dart
  @override
  String toString() {
    return 'Name = ${_name}';
  } 
}
