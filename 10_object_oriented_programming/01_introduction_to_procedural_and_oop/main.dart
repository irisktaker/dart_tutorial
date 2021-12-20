/**                       [Dart Programming]
   *                          
   *  Procedural Program's Focus          Opject Oriented Program Focus On  
   *  on Sequence                         Objects and Object Interactions
   *                                      
   *    Step 1                                        Object
   *      Step 2                                        |
   *        Step 3                        Object <--> Object <--> Object
   *          Step 4                                    | 
   *            Step 5                                Object   
   * 
   */

/**
 *  in this erea we can add a Global Data for the application
 *   |__ >> variables for all functions
 *  
 *  students data => Here it's means the data of studes are global variables and any one can access them 
 *  teachers data => Here it's means the data of teachers are global variables and any one can access them 
 * 
 *  this way had many problems ex: anyone can edit and access any data -variables
 */

void main() {
  registerStudents('Student 1', 13);
  registerTeachers('Teacher 1', 31);

  Students s1 = new Students();
  s1.registerStudents('Student', 14);

  Teachers t1 = new Teachers();
  t1.registerTeachers('Teacher', 38);
}

// Functions - Methods (here we call them functions)

// students functions
registerStudents(String name, int age) {
  // logical code to register for students
}
updateStudents(int id) {
  // logical code to update for students
}
// and all other functions that works for students

// teachers functions
registerTeachers(String name, int age) {
  // logical code to register for teachers
}
updateTeachers(int id) {
  // logical code to update for teacher
}
// and all other functions that works for teachers

// Class
class Students {
  // encapsulation
  // the data in Students class can be edit only from the Students class

  // data = fields
  int? id;
  String? name;

  // students methods
  registerStudents(String name, int age) {
    // logical code to register for students
  }
  updateStudents(int id) {
    // logical code to update for students
  }
  // and all other functions that works for students

}

class Teachers {
  // encapsulation
  // the data in Teachers class can be edit only from the Teachers class

  // data = fields
  int? id;
  String? name;

  // teachers methods
  registerTeachers(String name, int age) {
    // logical code to register for teachers
  }
  updateTeachers(int id) {
    // logical code to update for teacher
  }
  // and all other functions that works for teachers

}
