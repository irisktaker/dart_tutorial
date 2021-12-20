void main() {
  // loops
  // while loop & do while loop

  // while( condition || expression ) {
  // body
  // }

  var counter = 0;
  while (counter < 5) {
    print('Counter = $counter');
    // if we did not increment the counter value the loop will run infinitely
    counter++;
  }

  print('\n------------------------------\n');

  List<String> courses = ['Dart', 'Flutter', 'IOS', 'Android'];
  var i = 0;
  while (i < courses.length) {
    print('Courses ${courses[i]}');
    i++;
  }

  print('\n------------------------------\n');

  // do while
  var j = 0;
  do {
    print('j = $j');
    j++;
  } while (j < 5);

  print('\n------------------------------\n');

  // execute then evaluate (check)
  // you guarantee your code executed at least once
  // even if the condition of false will print at least once
  j = 10;
  do {
    print('j = $j');
    j++;
  } while (j < 5);

  print('\n------------------------------\n');

  // break & continue
  for (int i = 0; i < 5; i++) {
    if (i == 2) break;
    print('i = $i');
  }

  print('\n------------------------------\n');

  // break & continue
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue; // skip the current loop and go to the next one 
    // will not print 2 but will continue looping
    print('i = $i');
  }
}
