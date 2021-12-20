// ############################################################
// For loops

// You can iterate with the standard for loop. For example:

/**
 *  // we can assign the initializer out of the loop
 *  for (1[initializer]; 2[condition]; 3[counter]) {
 *     4[for body] --> (3 in execution)
 *  }
 */
void main() {
  // simple ex
  var i = 0;
  for (; i < 5;) {
    print('i = $i');
    i++;
  }

  print('\n-----------\n');

  var j = 0;
  for (; j < 5;) {
    print('j = $j');
    ++j;
  }

  print('\n#########################################################\n');

  // StringBuffer to give the value for the last time we assign the value
  // and it assign only once in the memory
  var message = StringBuffer('Dart is fun');
  // 1
  for (var i = 0; i < 5; i++)
    message.write(
        '!'); // here we change the value of the message variable for each time the code is running
  print(message);
  // 2
  var message2 = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message2.write('!');
    print(message2);
  }

  // Closures inside of Dart’s for loops capture the value of the index, avoiding a common pitfall found in JavaScript. For example, consider:

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    // anonymous function (){}
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  // The output is 0 and then 1, as expected. In contrast, the example would print 2 and then 2 in JavaScript.

  print('\n-----------\n');

  List<String> courses = ['Dart', 'Flutter', 'Java', 'Swift'];
  courses.forEach((e) => print(e));

  print('\n#########################################################\n');

  // If the object that you are iterating over is an Iterable (such as List or Set) and if you don’t need to know the current iteration counter, you can use the for-in form of iteration:

  var candidates = [];
  for (final candidate in candidates) {
    candidate.interview();
    print(candidate);
  }

  // Tip: To practice using for-in, follow the Iterable collections code lab.

  // Iterable classes also have a forEach() method as another option:

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3
}
